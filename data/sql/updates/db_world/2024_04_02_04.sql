-- DB update 2024_04_02_03 -> 2024_04_02_04

DELETE FROM pool_gameobject WHERE guid BETWEEN 75600 AND 75761;
DELETE FROM pool_gameobject WHERE guid BETWEEN 75765 AND 75932;
DELETE FROM pool_gameobject WHERE guid BETWEEN 75936 AND 75938;

INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(75600, 4880, 0, 'Spawn Point 1 - Copper'),
(75601, 4880, 20, 'Spawn Point 1 - Tin'),
(75602, 4880, 20, 'Spawn Point 1 - Silver'),
(75603, 4881, 0, 'Spawn Point 2 - Copper'),
(75604, 4881, 20, 'Spawn Point 2 - Tin'),
(75605, 4881, 20, 'Spawn Point 2 - Silver'),
(75606, 4882, 0, 'Spawn Point 3 - Copper'),
(75607, 4882, 20, 'Spawn Point 3 - Tin'),
(75608, 4882, 20, 'Spawn Point 3 - Silver'),
(75609, 4883, 0, 'Spawn Point 4 - Copper'),
(75610, 4883, 20, 'Spawn Point 4 - Tin'),
(75611, 4883, 20, 'Spawn Point 4 - Silver'),
(75612, 4884, 0, 'Spawn Point 5 - Copper'),
(75613, 4884, 20, 'Spawn Point 5 - Tin'),
(75614, 4884, 20, 'Spawn Point 5 - Silver'),
(75615, 4885, 0, 'Spawn Point 6 - Copper'),
(75616, 4885, 20, 'Spawn Point 6 - Tin'),
(75617, 4885, 20, 'Spawn Point 6 - Silver'),
(75618, 4886, 0, 'Spawn Point 7 - Copper'),
(75619, 4886, 20, 'Spawn Point 7 - Tin'),
(75620, 4886, 20, 'Spawn Point 7 - Silver'),
(75621, 4887, 0, 'Spawn Point 8 - Copper'),
(75622, 4887, 20, 'Spawn Point 8 - Tin'),
(75623, 4887, 20, 'Spawn Point 8 - Silver'),
(75624, 4888, 0, 'Spawn Point 9 - Copper'),
(75625, 4888, 20, 'Spawn Point 9 - Tin'),
(75626, 4888, 20, 'Spawn Point 9 - Silver'),
(75627, 4889, 0, 'Spawn Point 10 - Copper'),
(75628, 4889, 20, 'Spawn Point 10 - Tin'),
(75629, 4889, 20, 'Spawn Point 10 - Silver'),
(75630, 4890, 0, 'Spawn Point 11 - Copper'),
(75631, 4890, 20, 'Spawn Point 11 - Tin'),
(75632, 4890, 20, 'Spawn Point 11 - Silver'),
(75633, 4891, 0, 'Spawn Point 12 - Copper'),
(75634, 4891, 20, 'Spawn Point 12 - Tin'),
(75635, 4891, 20, 'Spawn Point 12 - Silver'),
(75636, 4892, 0, 'Spawn Point 13 - Copper'),
(75637, 4892, 20, 'Spawn Point 13 - Tin'),
(75638, 4892, 20, 'Spawn Point 13 - Silver'),
(75639, 4893, 0, 'Spawn Point 14 - Copper'),
(75640, 4893, 20, 'Spawn Point 14 - Tin'),
(75641, 4893, 20, 'Spawn Point 14 - Silver'),
(75642, 4894, 0, 'Spawn Point 15 - Copper'),
(75643, 4894, 20, 'Spawn Point 15 - Tin'),
(75644, 4894, 20, 'Spawn Point 15 - Silver'),
(75645, 4895, 0, 'Spawn Point 16 - Copper'),
(75646, 4895, 20, 'Spawn Point 16 - Tin'),
(75647, 4895, 20, 'Spawn Point 16 - Silver'),
(75648, 4896, 0, 'Spawn Point 17 - Copper'),
(75649, 4896, 20, 'Spawn Point 17 - Tin'),
(75650, 4896, 20, 'Spawn Point 17 - Silver'),
(75651, 4897, 0, 'Spawn Point 18 - Copper'),
(75652, 4897, 20, 'Spawn Point 18 - Tin'),
(75653, 4897, 20, 'Spawn Point 18 - Silver'),
(75654, 4898, 0, 'Spawn Point 19 - Copper'),
(75655, 4898, 20, 'Spawn Point 19 - Tin'),
(75656, 4898, 20, 'Spawn Point 19 - Silver'),
(75657, 4899, 0, 'Spawn Point 20 - Copper'),
(75658, 4899, 20, 'Spawn Point 20 - Tin'),
(75659, 4899, 20, 'Spawn Point 20 - Silver'),
(75660, 4900, 0, 'Spawn Point 21 - Copper'),
(75661, 4900, 20, 'Spawn Point 21 - Tin'),
(75662, 4900, 20, 'Spawn Point 21 - Silver'),
(75663, 4901, 0, 'Spawn Point 22 - Copper'),
(75664, 4901, 20, 'Spawn Point 22 - Tin'),
(75665, 4901, 20, 'Spawn Point 22 - Silver'),
(75666, 4902, 0, 'Spawn Point 23 - Copper'),
(75667, 4902, 20, 'Spawn Point 23 - Tin'),
(75668, 4902, 20, 'Spawn Point 23 - Silver'),
(75669, 4903, 0, 'Spawn Point 24 - Copper'),
(75670, 4903, 20, 'Spawn Point 24 - Tin'),
(75671, 4903, 20, 'Spawn Point 24 - Silver'),
(75672, 4904, 0, 'Spawn Point 25 - Copper'),
(75673, 4904, 20, 'Spawn Point 25 - Tin'),
(75674, 4904, 20, 'Spawn Point 25 - Silver'),
(75675, 4905, 0, 'Spawn Point 26 - Copper'),
(75676, 4905, 20, 'Spawn Point 26 - Tin'),
(75677, 4905, 20, 'Spawn Point 26 - Silver'),
(75678, 4906, 0, 'Spawn Point 27 - Copper'),
(75679, 4906, 20, 'Spawn Point 27 - Tin'),
(75680, 4906, 20, 'Spawn Point 27 - Silver'),
(75681, 4907, 0, 'Spawn Point 28 - Copper'),
(75682, 4907, 20, 'Spawn Point 28 - Tin'),
(75683, 4907, 20, 'Spawn Point 28 - Silver'),
(75684, 4908, 0, 'Spawn Point 29 - Copper'),
(75685, 4908, 20, 'Spawn Point 29 - Tin'),
(75686, 4908, 20, 'Spawn Point 29 - Silver'),
(75687, 4909, 0, 'Spawn Point 30 - Copper'),
(75688, 4909, 20, 'Spawn Point 30 - Tin'),
(75689, 4909, 20, 'Spawn Point 30 - Silver'),
(75690, 4910, 0, 'Spawn Point 31 - Copper'),
(75691, 4910, 20, 'Spawn Point 31 - Tin'),
(75692, 4910, 20, 'Spawn Point 31 - Silver'),
(75693, 4911, 0, 'Spawn Point 32 - Copper'),
(75694, 4911, 20, 'Spawn Point 32 - Tin'),
(75695, 4911, 20, 'Spawn Point 32 - Silver'),
(75696, 4912, 0, 'Spawn Point 33 - Copper'),
(75697, 4912, 20, 'Spawn Point 33 - Tin'),
(75698, 4912, 20, 'Spawn Point 33 - Silver'),
(75699, 4913, 0, 'Spawn Point 34 - Copper'),
(75700, 4913, 20, 'Spawn Point 34 - Tin'),
(75701, 4913, 20, 'Spawn Point 34 - Silver'),
(75702, 4914, 0, 'Spawn Point 35 - Copper'),
(75703, 4914, 20, 'Spawn Point 35 - Tin'),
(75704, 4914, 20, 'Spawn Point 35 - Silver'),
(75705, 4915, 0, 'Spawn Point 36 - Copper'),
(75706, 4915, 20, 'Spawn Point 36 - Tin'),
(75707, 4915, 20, 'Spawn Point 36 - Silver'),
(75708, 4916, 0, 'Spawn Point 37 - Copper'),
(75709, 4916, 20, 'Spawn Point 37 - Tin'),
(75710, 4916, 20, 'Spawn Point 37 - Silver'),
(75711, 4917, 0, 'Spawn Point 38 - Copper'),
(75712, 4917, 20, 'Spawn Point 38 - Tin'),
(75713, 4917, 20, 'Spawn Point 38 - Silver'),
(75714, 4918, 0, 'Spawn Point 39 - Copper'),
(75715, 4918, 20, 'Spawn Point 39 - Tin'),
(75716, 4918, 20, 'Spawn Point 39 - Silver'),
(75717, 4919, 0, 'Spawn Point 40 - Copper'),
(75718, 4919, 20, 'Spawn Point 40 - Tin'),
(75719, 4919, 20, 'Spawn Point 40 - Silver'),
(75720, 4920, 0, 'Spawn Point 41 - Copper'),
(75721, 4920, 20, 'Spawn Point 41 - Tin'),
(75722, 4920, 20, 'Spawn Point 41 - Silver'),
(75723, 4921, 0, 'Spawn Point 42 - Copper'),
(75724, 4921, 20, 'Spawn Point 42 - Tin'),
(75725, 4921, 20, 'Spawn Point 42 - Silver'),
(75726, 4922, 0, 'Spawn Point 43 - Copper'),
(75727, 4922, 20, 'Spawn Point 43 - Tin'),
(75728, 4922, 20, 'Spawn Point 43 - Silver'),
(75729, 4923, 0, 'Spawn Point 44 - Copper'),
(75730, 4923, 20, 'Spawn Point 44 - Tin'),
(75731, 4923, 20, 'Spawn Point 44 - Silver'),
(75732, 4924, 0, 'Spawn Point 45 - Copper'),
(75733, 4924, 20, 'Spawn Point 45 - Tin'),
(75734, 4924, 20, 'Spawn Point 45 - Silver'),
(75735, 4925, 0, 'Spawn Point 46 - Copper'),
(75736, 4925, 20, 'Spawn Point 46 - Tin'),
(75737, 4925, 20, 'Spawn Point 46 - Silver'),
(75738, 4926, 0, 'Spawn Point 47 - Copper'),
(75739, 4926, 20, 'Spawn Point 47 - Tin'),
(75740, 4926, 20, 'Spawn Point 47 - Silver'),
(75741, 4927, 0, 'Spawn Point 48 - Copper'),
(75742, 4927, 20, 'Spawn Point 48 - Tin'),
(75743, 4927, 20, 'Spawn Point 48 - Silver'),
(75744, 4928, 0, 'Spawn Point 49 - Copper'),
(75745, 4928, 20, 'Spawn Point 49 - Tin'),
(75746, 4928, 20, 'Spawn Point 49 - Silver'),
(75747, 4929, 0, 'Spawn Point 50 - Copper'),
(75748, 4929, 20, 'Spawn Point 50 - Tin'),
(75749, 4929, 20, 'Spawn Point 50 - Silver'),
(75750, 4930, 0, 'Spawn Point 51 - Copper'),
(75751, 4930, 20, 'Spawn Point 51 - Tin'),
(75752, 4930, 20, 'Spawn Point 51 - Silver'),
(75753, 4931, 0, 'Spawn Point 52 - Copper'),
(75754, 4931, 20, 'Spawn Point 52 - Tin'),
(75755, 4931, 20, 'Spawn Point 52 - Silver'),
(75756, 4932, 0, 'Spawn Point 53 - Copper'),
(75757, 4932, 20, 'Spawn Point 53 - Tin'),
(75758, 4932, 20, 'Spawn Point 53 - Silver'),
(75759, 4933, 0, 'Spawn Point 54 - Copper'),
(75760, 4933, 20, 'Spawn Point 54 - Tin'),
(75761, 4933, 20, 'Spawn Point 54 - Silver'),
(75765, 4935, 0, 'Spawn Point 56 - Copper'),
(75766, 4935, 20, 'Spawn Point 56 - Tin'),
(75767, 4935, 20, 'Spawn Point 56 - Silver'),
(75768, 4936, 0, 'Spawn Point 57 - Copper'),
(75769, 4936, 20, 'Spawn Point 57 - Tin'),
(75770, 4936, 20, 'Spawn Point 57 - Silver'),
(75771, 4937, 0, 'Spawn Point 58 - Copper'),
(75772, 4937, 20, 'Spawn Point 58 - Tin'),
(75773, 4937, 20, 'Spawn Point 58 - Silver'),
(75774, 4938, 0, 'Spawn Point 59 - Copper'),
(75775, 4938, 20, 'Spawn Point 59 - Tin'),
(75776, 4938, 20, 'Spawn Point 59 - Silver'),
(75777, 4939, 0, 'Spawn Point 60 - Copper'),
(75778, 4939, 20, 'Spawn Point 60 - Tin'),
(75779, 4939, 20, 'Spawn Point 60 - Silver'),
(75780, 4940, 0, 'Spawn Point 61 - Copper'),
(75781, 4940, 20, 'Spawn Point 61 - Tin'),
(75782, 4940, 20, 'Spawn Point 61 - Silver'),
(75783, 4941, 0, 'Spawn Point 62 - Copper'),
(75784, 4941, 20, 'Spawn Point 62 - Tin'),
(75785, 4941, 20, 'Spawn Point 62 - Silver'),
(75786, 4942, 0, 'Spawn Point 63 - Copper'),
(75787, 4942, 20, 'Spawn Point 63 - Tin'),
(75788, 4942, 20, 'Spawn Point 63 - Silver'),
(75789, 4943, 0, 'Spawn Point 64 - Copper'),
(75790, 4943, 20, 'Spawn Point 64 - Tin'),
(75791, 4943, 20, 'Spawn Point 64 - Silver'),
(75792, 4944, 0, 'Spawn Point 65 - Copper'),
(75793, 4944, 20, 'Spawn Point 65 - Tin'),
(75794, 4944, 20, 'Spawn Point 65 - Silver'),
(75795, 4945, 0, 'Spawn Point 66 - Copper'),
(75796, 4945, 20, 'Spawn Point 66 - Tin'),
(75797, 4945, 20, 'Spawn Point 66 - Silver'),
(75798, 4946, 0, 'Spawn Point 67 - Copper'),
(75799, 4946, 20, 'Spawn Point 67 - Tin'),
(75800, 4946, 20, 'Spawn Point 67 - Silver'),
(75801, 4947, 0, 'Spawn Point 68 - Copper'),
(75802, 4947, 20, 'Spawn Point 68 - Tin'),
(75803, 4947, 20, 'Spawn Point 68 - Silver'),
(75804, 4948, 0, 'Spawn Point 69 - Copper'),
(75805, 4948, 20, 'Spawn Point 69 - Tin'),
(75806, 4948, 20, 'Spawn Point 69 - Silver'),
(75807, 4949, 0, 'Spawn Point 70 - Copper'),
(75808, 4949, 20, 'Spawn Point 70 - Tin'),
(75809, 4949, 20, 'Spawn Point 70 - Silver'),
(75810, 4950, 0, 'Spawn Point 71 - Copper'),
(75811, 4950, 20, 'Spawn Point 71 - Tin'),
(75812, 4950, 20, 'Spawn Point 71 - Silver'),
(75813, 4951, 0, 'Spawn Point 72 - Copper'),
(75814, 4951, 20, 'Spawn Point 72 - Tin'),
(75815, 4951, 20, 'Spawn Point 72 - Silver'),
(75816, 4952, 0, 'Spawn Point 73 - Copper'),
(75817, 4952, 20, 'Spawn Point 73 - Tin'),
(75818, 4952, 20, 'Spawn Point 73 - Silver'),
(75819, 4953, 0, 'Spawn Point 74 - Copper'),
(75820, 4953, 20, 'Spawn Point 74 - Tin'),
(75821, 4953, 20, 'Spawn Point 74 - Silver'),
(75822, 4954, 0, 'Spawn Point 75 - Copper'),
(75823, 4954, 20, 'Spawn Point 75 - Tin'),
(75824, 4954, 20, 'Spawn Point 75 - Silver'),
(75825, 4955, 0, 'Spawn Point 76 - Copper'),
(75826, 4955, 20, 'Spawn Point 76 - Tin'),
(75827, 4955, 20, 'Spawn Point 76 - Silver'),
(75828, 4956, 0, 'Spawn Point 77 - Copper'),
(75829, 4956, 20, 'Spawn Point 77 - Tin'),
(75830, 4956, 20, 'Spawn Point 77 - Silver'),
(75831, 4957, 0, 'Spawn Point 78 - Copper'),
(75832, 4957, 20, 'Spawn Point 78 - Tin'),
(75833, 4957, 20, 'Spawn Point 78 - Silver'),
(75834, 4958, 0, 'Spawn Point 79 - Copper'),
(75835, 4958, 20, 'Spawn Point 79 - Tin'),
(75836, 4958, 20, 'Spawn Point 79 - Silver'),
(75837, 4959, 0, 'Spawn Point 80 - Copper'),
(75838, 4959, 20, 'Spawn Point 80 - Tin'),
(75839, 4959, 20, 'Spawn Point 80 - Silver'),
(75840, 4960, 0, 'Spawn Point 81 - Copper'),
(75841, 4960, 20, 'Spawn Point 81 - Tin'),
(75842, 4960, 20, 'Spawn Point 81 - Silver'),
(75843, 4961, 0, 'Spawn Point 82 - Copper'),
(75844, 4961, 20, 'Spawn Point 82 - Tin'),
(75845, 4961, 20, 'Spawn Point 82 - Silver'),
(75846, 4962, 0, 'Spawn Point 83 - Copper'),
(75847, 4962, 20, 'Spawn Point 83 - Tin'),
(75848, 4962, 20, 'Spawn Point 83 - Silver'),
(75849, 4963, 0, 'Spawn Point 84 - Copper'),
(75850, 4963, 20, 'Spawn Point 84 - Tin'),
(75851, 4963, 20, 'Spawn Point 84 - Silver'),
(75852, 4964, 0, 'Spawn Point 85 - Copper'),
(75853, 4964, 20, 'Spawn Point 85 - Tin'),
(75854, 4964, 20, 'Spawn Point 85 - Silver'),
(75855, 4965, 0, 'Spawn Point 86 - Copper'),
(75856, 4965, 20, 'Spawn Point 86 - Tin'),
(75857, 4965, 20, 'Spawn Point 86 - Silver'),
(75858, 4966, 0, 'Spawn Point 87 - Copper'),
(75859, 4966, 20, 'Spawn Point 87 - Tin'),
(75860, 4966, 20, 'Spawn Point 87 - Silver'),
(75861, 4967, 0, 'Spawn Point 88 - Copper'),
(75862, 4967, 20, 'Spawn Point 88 - Tin'),
(75863, 4967, 20, 'Spawn Point 88 - Silver'),
(75864, 4968, 0, 'Spawn Point 89 - Copper'),
(75865, 4968, 20, 'Spawn Point 89 - Tin'),
(75866, 4968, 20, 'Spawn Point 89 - Silver'),
(75867, 4969, 0, 'Spawn Point 90 - Copper'),
(75868, 4969, 20, 'Spawn Point 90 - Tin'),
(75869, 4969, 20, 'Spawn Point 90 - Silver'),
(75870, 4970, 0, 'Spawn Point 91 - Copper'),
(75871, 4970, 20, 'Spawn Point 91 - Tin'),
(75872, 4970, 20, 'Spawn Point 91 - Silver'),
(75873, 4971, 0, 'Spawn Point 92 - Copper'),
(75874, 4971, 20, 'Spawn Point 92 - Tin'),
(75875, 4971, 20, 'Spawn Point 92 - Silver'),
(75876, 4972, 0, 'Spawn Point 93 - Copper'),
(75877, 4972, 20, 'Spawn Point 93 - Tin'),
(75878, 4972, 20, 'Spawn Point 93 - Silver'),
(75879, 4973, 0, 'Spawn Point 94 - Copper'),
(75880, 4973, 20, 'Spawn Point 94 - Tin'),
(75881, 4973, 20, 'Spawn Point 94 - Silver'),
(75882, 4974, 0, 'Spawn Point 95 - Copper'),
(75883, 4974, 20, 'Spawn Point 95 - Tin'),
(75884, 4974, 20, 'Spawn Point 95 - Silver'),
(75885, 4975, 0, 'Spawn Point 96 - Copper'),
(75886, 4975, 20, 'Spawn Point 96 - Tin'),
(75887, 4975, 20, 'Spawn Point 96 - Silver'),
(75888, 4976, 0, 'Spawn Point 97 - Copper'),
(75889, 4976, 20, 'Spawn Point 97 - Tin'),
(75890, 4976, 20, 'Spawn Point 97 - Silver'),
(75891, 4977, 0, 'Spawn Point 98 - Copper'),
(75892, 4977, 20, 'Spawn Point 98 - Tin'),
(75893, 4977, 20, 'Spawn Point 98 - Silver'),
(75894, 4978, 0, 'Spawn Point 99 - Copper'),
(75895, 4978, 20, 'Spawn Point 99 - Tin'),
(75896, 4978, 20, 'Spawn Point 99 - Silver'),
(75897, 4979, 0, 'Spawn Point 100 - Copper'),
(75898, 4979, 20, 'Spawn Point 100 - Tin'),
(75899, 4979, 20, 'Spawn Point 100 - Silver'),
(75900, 4980, 0, 'Spawn Point 101 - Copper'),
(75901, 4980, 20, 'Spawn Point 101 - Tin'),
(75902, 4980, 20, 'Spawn Point 101 - Silver'),
(75903, 4981, 0, 'Spawn Point 102 - Copper'),
(75904, 4981, 20, 'Spawn Point 102 - Tin'),
(75905, 4981, 20, 'Spawn Point 102 - Silver'),
(75906, 4982, 0, 'Spawn Point 103 - Copper'),
(75907, 4982, 20, 'Spawn Point 103 - Tin'),
(75908, 4982, 20, 'Spawn Point 103 - Silver'),
(75909, 4983, 0, 'Spawn Point 104 - Copper'),
(75910, 4983, 20, 'Spawn Point 104 - Tin'),
(75911, 4983, 20, 'Spawn Point 104 - Silver'),
(75912, 4984, 0, 'Spawn Point 105 - Copper'),
(75913, 4984, 20, 'Spawn Point 105 - Tin'),
(75914, 4984, 20, 'Spawn Point 105 - Silver'),
(75915, 4985, 0, 'Spawn Point 106 - Copper'),
(75916, 4985, 20, 'Spawn Point 106 - Tin'),
(75917, 4985, 20, 'Spawn Point 106 - Silver'),
(75918, 4986, 0, 'Spawn Point 107 - Copper'),
(75919, 4986, 20, 'Spawn Point 107 - Tin'),
(75920, 4986, 20, 'Spawn Point 107 - Silver'),
(75921, 4987, 0, 'Spawn Point 108 - Copper'),
(75922, 4987, 20, 'Spawn Point 108 - Tin'),
(75923, 4987, 20, 'Spawn Point 108 - Silver'),
(75924, 4988, 0, 'Spawn Point 109 - Copper'),
(75925, 4988, 20, 'Spawn Point 109 - Tin'),
(75926, 4988, 20, 'Spawn Point 109 - Silver'),
(75927, 4989, 0, 'Spawn Point 110 - Copper'),
(75928, 4989, 20, 'Spawn Point 110 - Tin'),
(75929, 4989, 20, 'Spawn Point 110 - Silver'),
(75930, 4990, 0, 'Spawn Point 111 - Copper'),
(75931, 4990, 20, 'Spawn Point 111 - Tin'),
(75932, 4990, 20, 'Spawn Point 111 - Silver'),
(75936, 4992, 0, 'Spawn Point 113 - Copper'),
(75937, 4992, 20, 'Spawn Point 113 - Tin'),
(75938, 4992, 20, 'Spawn Point 113 - Silver');

