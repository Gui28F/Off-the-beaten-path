# Off-the-beaten-path
When we look at a network of lines, for example at a complex road map with winding lines and crossroads (intersections) all over the place, we can ask ourselves how best to deal with such a complex entity that has no easily identifiable structure. One technique that seems valid is to start by decomposing a complex path into a collection of linear segments where no intersection occurs. Then, we try to solve our hardest problems using the new representation.

 In this project, a path is defined as a sequence of mostly adjacent points in a two-dimensional plane. Each point will be a simple ordered pair of integers. This is an unconventional representation for paths, but it's a good foundation for creating instructive and fun programming exercises.

Our paths are directed, meaning that they are transversed forwardly and never backwardly.

Every path must have at least one point. Therefore, the empty list represents an invalid path. 
A segment is a simple path, with no discontinuities, neither intersections. We can go through all the points, from the start to the end, with no problem whatsoever, but we also consider to be a segment, the special case of a closed segment, where the extremities (start point and the end point) coincide. Technically, the two extremities intersect themselves, but this is a benign kind of intersection because it is not supply a bridge to a different segment.

Example of a small closed segment:

    let example2 = [
            (0,0); (0,1); (0,2);
            (1,2); (2,2); (2,1);
            (2,0); (1,0); (0,0)
    ]

A general path can be very complex, with intersecting branches and discontinued parts. Here is an example of a path consisting of three straight lines plus a small square. The three lines intersect at the point (4,4). As for the small square, it does not touch any of the lines.

One interesting function to be developed, is the function segments. It takes a general path and decomposes it at most instances of the intersection points and at all the discontinuities. Check the example below. Note that an instance of at intersecting point must be duplicated each time it needs to be shared between two segments, to keep the original connectivity between them. We need the decomposed path not to lose any connectivity information relative to the original path. On the other hand, we don't want to duplicate any instance of a point other than out of absolute necessity.

Another interesting function is the function best. Is takes a list of segments (which is the output of the previous function), a list of intersections (which is the output of the function intersections), plus two points. The function discovers the shortest path from the first point to the second point, being allowed to freely move across segments via the intersection points. The resulting path can be made by combining portions of several segments. 
