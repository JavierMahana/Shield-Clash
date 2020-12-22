// Solo en el tutorial
if (room == r_tutorial)
{
	if(!_invul && instance_exists(o_player))
	{
		with(other)
		{
			if(distance_to_point(other.x, other.y) <= other._hurtRadius)
			{
				//Revisa el ultimo checkpoint

				 //5
				  if (inst_2BC15EA5.activate == false)
				  {
					  o_player.x = inst_2BC15EA5.x + 32;
					  o_player.y = inst_2BC15EA5.y + 32;
				  }
				 //4
				  else if (inst_34B7BC5D.activate == false)
				  {
					  o_player.x = inst_34B7BC5D.x + 32;
					  o_player.y = inst_34B7BC5D.y + 32;
				  }
				 //3
				  else if (inst_1661CB42.activate == false)
				  {
					  o_player.x = inst_1661CB42.x + 32;
					  o_player.y = inst_1661CB42.y + 32;
				  }
  
				 //2
				  else if (inst_30554D66.activate == false)
				  {
					  o_player.x = inst_30554D66.x + 32;
					  o_player.y = inst_30554D66.y + 32;
				  }

				 //1
				  else if (inst_4C7AA0FC.activate == false)
				  {
					  o_player.x = inst_4C7AA0FC.x + 32;
					  o_player.y = inst_4C7AA0FC.y + 32;
				  }
				
			}
		}
	}
	


}

// en el resto de niveles
else
{
	if(!_invul)
	{
		with(other)
		{
			if(distance_to_point(other.x, other.y) <= other._hurtRadius)
			{
				instance_destroy(other);
			}
		}
	}
}
