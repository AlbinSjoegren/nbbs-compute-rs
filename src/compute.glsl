#define G (6.67430 * pow(10.0, -11.0))

vec3 acceleration(vec3 parent_position, vec3 child_position, float child_mass) {
    vec3 distance_vec = child_position - parent_position;
    float distance = sqrt(pow(distance_vec.x, 2.0) + pow(distance_vec.y, 2.0) + pow(distance_vec.z, 2.0));
    vec3 a = (0.0 - G) * (child_mass / pow(distance, 3.0)) * distance_vec;
    return a;
}

vec3 position(vec3 parent_position, vec3 parent_velocity) {
    vec3 parent_position_new = parent_position + parent_velocity;
    return parent_position_new;
}