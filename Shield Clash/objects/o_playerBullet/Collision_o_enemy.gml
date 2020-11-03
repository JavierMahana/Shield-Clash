// Al morir los enemigos...
Particulas();
part_particles_create(global.particleSystem, other.x, other.y, global.particulaHit, 1);
instance_destroy();