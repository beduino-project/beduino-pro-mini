#! /usr/bin/env python2

import pcbnew
import logging
import copy
import wx
import math

from pcbnew import IU_PER_MM as TO_KICAD


def __mul__(self, float_value):
    return pcbnew.wxPoint(self.x * float_value, self.y * float_value)


def size_mul(self, float_value):
    return pcbnew.wxSize(self.x * float_value, self.y * float_value)


pcbnew.wxPoint.__mul__ = __mul__
pcbnew.wxSize.__mul__ = size_mul


def duplicate_n_times(board_module, n):
    for i in range(1, n):
        duplicate = board.Duplicate(board_module, aAddToBoard=True)
        new_pos = pcbnew.wxPoint(0, i * dist_between_boards_y)
        duplicate.Move(new_pos)


def create_breakaway_tab_at(x, y, width):
    logger.info("Creating breakaway tab at {}".format((x, y)))

    arc_center = pcbnew.wxPoint(x - width / 2.0 - TO_KICAD, y)
    start = arc_center - pcbnew.wxPoint(0.0, TO_KICAD)

    create_edge_cuts_arc(arc_center, start, 1800)

    arc_center = pcbnew.wxPoint(x + width / 2.0 + TO_KICAD, y)
    start = arc_center + pcbnew.wxPoint(0.0, TO_KICAD)

    create_edge_cuts_arc(arc_center, start, 1800)

    for j in [-1, 1]:
        for i in range(0, int(round(breakaway_tab_width / TO_KICAD))):
            hole = pcbnew.MODULE(board)
            board.Add(hole)

            pad = pcbnew.D_PAD(hole)
            hole.Add(pad)

            pad.SetDrillSize(pcbnew.wxSize(0.5 * TO_KICAD, 0.5 * TO_KICAD))
            pad.SetSize(pcbnew.wxSize(0.5 * TO_KICAD, 0.5 * TO_KICAD))
            pad.SetAttribute(pcbnew.PAD_ATTRIB_HOLE_NOT_PLATED)
            layer_set = pad.UnplatedHoleMask()
            layer_set.RemoveLayer(board.GetLayerID("F.Mask"))
            layer_set.RemoveLayer(board.GetLayerID("B.Mask"))
            pad.SetLayerSet(layer_set)

            position = pcbnew.wxPoint((x - width / 2.0 + 0.5 * TO_KICAD + i * TO_KICAD), y + j * TO_KICAD)

            logger.info("Setting npth {} to {}".format(i, position))
            hole.SetPosition(position)


def create_breakaway_tabs(n):
    outer_dist_breakaway_tabs = pcb_width / 4.0
    breakaway_tab_x = pcb_origin_x + outer_dist_breakaway_tabs
    breakaway_tab_y = pcb_origin_y - TO_KICAD
    dist_x = 2 * outer_dist_breakaway_tabs
    number_of_tabs = 2
    for j in range(0, n+1):
        for i in range(0, number_of_tabs):
            create_breakaway_tab_at(breakaway_tab_x + i * dist_x,
                                    breakaway_tab_y + j * dist_between_boards_y,
                                    breakaway_tab_width)


def create_edges():
    for i in range(0, y_array):
        create_edge_for_board(i)
    # create outer borders
    dist_to_breakaway = pcb_width / 4.0 - (breakaway_tab_width / 2.0 + TO_KICAD) + 2 * TO_KICAD
    origin = pcbnew.wxPoint(pcb_origin_x - 2 * TO_KICAD, pcb_origin_y - 2 * TO_KICAD)
    top_right = origin + pcbnew.wxPoint(pcb_width + 4 * TO_KICAD, 0)
    bottom_left = origin + pcbnew.wxPoint(0, (pcb_height + 2 * TO_KICAD) * y_array + 2 * TO_KICAD)
    bottom_right = bottom_left + pcbnew.wxPoint(pcb_width + 4 * TO_KICAD, 0)
    center_top = origin + pcbnew.wxPoint(pcb_width/2.0 + 2 * TO_KICAD, 0)
    center_bot = bottom_left + pcbnew.wxPoint(pcb_width/2.0 + 2 * TO_KICAD, 0)
    create_edge_cuts_line(origin + pcbnew.wxPoint(0, TO_KICAD), bottom_left - pcbnew.wxPoint(0, TO_KICAD))
    create_edge_cuts_line(origin + pcbnew.wxPoint(TO_KICAD, 0), origin + pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(top_right - pcbnew.wxPoint(TO_KICAD, 0), top_right - pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(bottom_left + pcbnew.wxPoint(TO_KICAD, 0), bottom_left + pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(bottom_right - pcbnew.wxPoint(TO_KICAD, 0), bottom_right - pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(top_right + pcbnew.wxPoint(0, TO_KICAD), bottom_right - pcbnew.wxPoint(0, TO_KICAD))
    create_edge_cuts_line(center_top - pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0),
                          center_top + pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0))
    create_edge_cuts_line(center_bot - pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0),
                          center_bot + pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0))

    create_edge_cuts_arc(origin + pcbnew.wxPoint(TO_KICAD, TO_KICAD),
                         origin + pcbnew.wxPoint(0, TO_KICAD),
                         900)
    create_edge_cuts_arc(top_right + pcbnew.wxPoint(-TO_KICAD, TO_KICAD),
                         top_right + pcbnew.wxPoint(-TO_KICAD, 0),
                         900)
    create_edge_cuts_arc(bottom_left + pcbnew.wxPoint(TO_KICAD, -TO_KICAD),
                         bottom_left + pcbnew.wxPoint(TO_KICAD, 0),
                         900)
    create_edge_cuts_arc(bottom_right + pcbnew.wxPoint(-TO_KICAD, -TO_KICAD),
                         bottom_right + pcbnew.wxPoint(0, -TO_KICAD),
                         900)

    frame_width = 7 * TO_KICAD

    create_edge_cuts_line(origin - pcbnew.wxPoint(frame_width, frame_width),
                          top_right + pcbnew.wxPoint(frame_width, -frame_width))
    create_edge_cuts_line(origin - pcbnew.wxPoint(frame_width, frame_width),
                          bottom_left + pcbnew.wxPoint(-frame_width, frame_width))
    create_edge_cuts_line(bottom_right + pcbnew.wxPoint(frame_width, frame_width),
                          top_right + pcbnew.wxPoint(frame_width, -frame_width))
    create_edge_cuts_line(bottom_right + pcbnew.wxPoint(frame_width, frame_width),
                          bottom_left + pcbnew.wxPoint(-frame_width, frame_width))


def create_edge_for_board(n):
    origin = pcbnew.wxPoint(pcb_origin_x, pcb_origin_y + n * dist_between_boards_y)
    bottom_left = origin + pcbnew.wxPoint(0, pcb_height)
    top_right = origin + pcbnew.wxPoint(pcb_width, 0)
    bottom_right = origin + pcbnew.wxPoint(pcb_width, pcb_height)
    center_top = origin + pcbnew.wxPoint(pcb_width/2.0, 0)
    center_bot = bottom_left + pcbnew.wxPoint(pcb_width/2.0, 0)
    dist_to_breakaway = pcb_width / 4.0 - (breakaway_tab_width / 2.0 + TO_KICAD)
    create_edge_cuts_line(origin, origin + pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(origin, bottom_left)
    create_edge_cuts_line(bottom_left, bottom_left + pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(top_right, top_right - pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(top_right, bottom_right)
    create_edge_cuts_line(bottom_right, bottom_right - pcbnew.wxPoint(dist_to_breakaway, 0))
    create_edge_cuts_line(center_top - pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0),
                          center_top + pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0))
    create_edge_cuts_line(center_bot - pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0),
                          center_bot + pcbnew.wxPoint(pcb_width / 4.0 - 3.5 * TO_KICAD, 0))


def create_edge_cuts_line(start, end):
    drawing = pcbnew.DRAWSEGMENT()
    board.Add(drawing)
    drawing.SetStart(start)
    drawing.SetEnd(end)

    drawing.SetLayer(board.GetLayerID("Edge.Cuts"))


def create_edge_cuts_arc(center, start, angle):
    arc = pcbnew.DRAWSEGMENT()
    board.Add(arc)
    arc.SetShape(pcbnew.S_ARC)
    logger.info("Setting left arcs center to {}".format(center))
    arc.SetCenter(center)
    arc.SetArcStart(start)
    arc.SetAngle(angle)
    arc.SetLayer(board.GetLayerID("Edge.Cuts"))


if __name__ == '__main__':
    logger = logging.getLogger("Panelizer")
    handler = logging.StreamHandler()
    formatter = logging.Formatter("%(levelname)s-[%(name)s] : %(message)s")
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    logger.setLevel(logging.INFO)
    board = pcbnew.LoadBoard("beduino_kw41z.kicad_pcb")
    # board.SetAuxOrigin(pcbnew.wxPoint(20, 20) * TO_KICAD)
    # board.SetGridOrigin(pcbnew.wxPoint(20, 20) * TO_KICAD)

    logger.debug("Board layers {}".format(board.GetCopperLayerCount()))

    bounding_box = board.GetBoardEdgesBoundingBox()

    pcb_origin_x = round(bounding_box.GetX() / TO_KICAD) * TO_KICAD
    pcb_origin_y = round(bounding_box.GetY() / TO_KICAD) * TO_KICAD
    pcb_height = round(bounding_box.GetHeight() / TO_KICAD) * TO_KICAD
    pcb_width = round(bounding_box.GetWidth() / TO_KICAD) * TO_KICAD

    logger.info("Board found at origin {} with width {} and height {}".format((pcb_origin_x / TO_KICAD,
                                                                               pcb_origin_y / TO_KICAD),
                                                                              pcb_width / TO_KICAD,
                                                                              pcb_height / TO_KICAD))

    spacing_between_boards = 2 * TO_KICAD
    dist_between_boards_y = pcb_height + spacing_between_boards
    x_array = 1
    y_array = 4
    breakaway_tab_width = 5 * TO_KICAD

    for module in board.GetModules():
        duplicate_n_times(module, y_array)

    for net, value in board.GetNetsByNetcode().items():
        logger.debug("Duplicating tracks in net {}".format(str(net)))
        for track in board.TracksInNet(net):
            duplicate_n_times(track, y_array)

    for area in range(0, board.GetAreaCount()):
        duplicate_n_times(board.GetArea(area), y_array)

    # Now remove the old edge_cuts and add new ones with breakaway tabs

    edge_cuts_layer_id = board.GetLayerID("Edge.Cuts")

    for drawing in board.GetDrawings():
        if drawing.GetLayer() == edge_cuts_layer_id:
            board.Remove(drawing)

    # for i in range(0, repetitions):
    #     create_edge_cuts_for_board(i)

    create_breakaway_tabs(y_array)
    create_edges()

    pcbnew.SaveBoard("beduino_kw41z_panel.kicad_pcb", board)
