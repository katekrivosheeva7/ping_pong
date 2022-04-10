from pygame import*

class GameSprite(sprite.Sprite):
    def __ init__(self, player_image, player_x, player_y, player_speed, wight, height):
        
      self.image = transform.scale(image.load(player_image), (wight, height))
      self.speed = player_speed
        self.rect = self.image.get_rect()
        self.rect.x = player_x
        self.rect.y = player_y

    def reset(self):
        window.blit(self.image, (self.rect.x, self.rect.y))
