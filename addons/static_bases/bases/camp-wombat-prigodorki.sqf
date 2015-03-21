/*************************************************************************
	camp-wombat-prigadorki.sqf

	Author: 
	  bigAPE (shizweak.es)

	Description:
	  Constructs a Camp Wombat base at Prig

	Parameter(s):
	  None
	
	Example:
  	  ["camp-wombat-prigadorki"] execVM "addons\static_bases\loadStaticBase.sqf";
*************************************************************************/

private ["_objects"];

_objects = [
	["Land_BagBunker_Small_F",[7496.5024,3457.4341,0],746.96338],
	["Land_BagFence_Round_F",[7492.6377,3455.9146,0],1151.5232],
	["Land_BagFence_Round_F",[7497.1997,3453.5657,0],1058.8905],
	["Land_BagFence_Long_F",[7494.6235,3454.2629,0],927.30469],
	["Land_BagFence_Long_F",[7493.1567,3458.2991,0],657.79932],
	["Land_BagFence_Long_F",[7498.9438,3455.3669,0],657.79962],
	["Land_HBarrier_1_F",[7531.9609,3469.6135,1.25],251.53139],
	["Land_HBarrier_1_F",[7531.9575,3469.6226,0],251.53133],
	["Land_HBarrier_1_F",[7530.5054,3469.1108,1.25],251.53139],
	["Land_HBarrier_1_F",[7530.4995,3469.123,0],251.53133],
	["Land_HBarrier_1_F",[7529.0693,3468.6294,1.25],251.53139],
	["Land_HBarrier_1_F",[7529.0693,3468.6404,0],251.53133],
	["Land_HBarrier_1_F",[7527.6147,3468.1313,1.25],251.53139],
	["Land_HBarrier_1_F",[7527.6089,3468.1453,0],251.53133],
	["Land_HBarrier_1_F",[7526.1943,3467.6521,1.25],251.53139],
	["Land_HBarrier_1_F",[7526.1836,3467.665,0],251.53133],
	["Land_HBarrier_1_F",[7524.7368,3467.156,1.25],251.53139],
	["Land_HBarrier_1_F",[7524.73,3467.1699,0],251.53133],
	["Land_HBarrier_1_F",[7523.3013,3466.6714,1.25],251.53139],
	["Land_HBarrier_1_F",[7523.2964,3466.6831,0],251.53133],
	["Land_HBarrier_1_F",[7521.8369,3466.1743,1.25],251.53139],
	["Land_HBarrier_1_F",[7521.8359,3466.1934,0],251.53133],
	["Land_HBarrier_1_F",[7520.3936,3465.6902,1.25],251.53139],
	["Land_HBarrier_1_F",[7520.3877,3465.7068,0],251.53133],
	["Land_HBarrier_1_F",[7518.9312,3465.2063,1.25],251.53139],
	["Land_HBarrier_1_F",[7518.9263,3465.2205,0],251.53133],
	["Land_HBarrier_1_F",[7517.4951,3464.7148,1.25],251.53139],
	["Land_HBarrier_1_F",[7517.4932,3464.7292,0],251.53133],
	["Land_HBarrier_1_F",[7516.0342,3464.2188,1.25],251.53139],
	["Land_HBarrier_1_F",[7516.0352,3464.2305,0],251.53133],
	["Land_HBarrier_1_F",[7514.6187,3463.738,1.25],251.53139],
	["Land_HBarrier_1_F",[7514.6191,3463.7527,0],251.53133],
	["Land_HBarrier_1_F",[7513.1606,3463.2529,1.25],251.53139],
	["Land_HBarrier_1_F",[7513.1533,3463.2671,0],251.53133],
	["Land_HBarrier_1_F",[7511.7275,3462.7617,1.25],251.53139],
	["Land_HBarrier_1_F",[7511.7144,3462.7712,0],251.53133],
	["Land_HBarrier_1_F",[7510.2651,3462.2686,1.25],251.53139],
	["Land_HBarrier_1_F",[7510.2627,3462.28,0],251.53133],
	["Land_HBarrier_1_F",[7508.8213,3461.7859,1.25],251.53139],
	["Land_HBarrier_1_F",[7508.8135,3461.8044,0],251.53133],
	["Land_HBarrier_1_F",[7507.3589,3461.2983,1.25],251.53139],
	["Land_HBarrier_1_F",[7507.353,3461.3098,0],251.53133],
	["Land_HBarrier_1_F",[7505.9277,3460.8091,1.25],251.53139],
	["Land_HBarrier_1_F",[7505.9209,3460.8237,0],251.53133],
	["Land_HBarrier_1_F",[7504.4683,3460.3152,1.25],251.53139],
	["Land_HBarrier_1_F",[7504.4629,3460.3289,0],251.53133],
	["Land_HBarrier_1_F",[7503.0493,3459.8354,1.25],251.53139],
	["Land_HBarrier_1_F",[7503.041,3459.8496,0],251.53133],
	["Land_HBarrier_1_F",[7501.5854,3459.3398,1.25],251.53139],
	["Land_HBarrier_1_F",[7501.5806,3459.3552,0],251.53133],
	["Land_HBarrier_1_F",[7500.1519,3458.8545,1.25],251.53139],
	["Land_HBarrier_1_F",[7500.1494,3458.8711,0],251.53133],
	["Land_HBarrier_1_F",[7498.6953,3458.3555,1.25],251.53139],
	["Land_HBarrier_1_F",[7498.6885,3458.3706,0],251.53133],
	["Land_HBarrier_1_F",[7495.8457,3459.8511,1.25],341.50711],
	["Land_HBarrier_1_F",[7495.8564,3459.8567,0],341.50705],
	["Land_HBarrier_1_F",[7495.3364,3461.3057,1.25],341.50711],
	["Land_HBarrier_1_F",[7495.3496,3461.3164,0],341.50705],
	["Land_HBarrier_1_F",[7494.8506,3462.7424,1.25],341.50711],
	["Land_HBarrier_1_F",[7494.8608,3462.7456,0],341.50705],
	["Land_HBarrier_1_F",[7494.353,3464.1982,1.25],341.50711],
	["Land_HBarrier_1_F",[7494.3638,3464.21,0],341.50705],
	["Land_HBarrier_1_F",[7493.8682,3465.6177,1.25],341.50711],
	["Land_HBarrier_1_F",[7493.8877,3465.623,0],341.50705],
	["Land_HBarrier_1_F",[7493.3745,3467.0781,1.25],341.50711],
	["Land_HBarrier_1_F",[7493.3896,3467.0823,0],341.50705],
	["Land_HBarrier_1_F",[7492.8877,3468.5142,1.25],341.50711],
	["Land_HBarrier_1_F",[7492.9058,3468.5164,0],341.50705],
	["Land_HBarrier_1_F",[7492.4014,3469.9753,1.25],341.50711],
	["Land_HBarrier_1_F",[7492.415,3469.9797,0],341.50705],
	["Land_HBarrier_1_F",[7491.9194,3471.4197,1.25],341.50711],
	["Land_HBarrier_1_F",[7491.9346,3471.4243,0],341.50705],
	["Land_HBarrier_1_F",[7491.4233,3472.876,1.25],341.50711],
	["Land_HBarrier_1_F",[7491.4375,3472.885,0],341.50705],
	["Land_HBarrier_1_F",[7490.9365,3474.3147,1.25],341.50711],
	["Land_HBarrier_1_F",[7490.9521,3474.3142,0],341.50705],
	["Land_HBarrier_1_F",[7490.4346,3475.7742,1.25],341.50711],
	["Land_HBarrier_1_F",[7490.4487,3475.7761,0],341.50705],
	["Land_HBarrier_1_F",[7489.9541,3477.1794,1.25],341.50711],
	["Land_HBarrier_1_F",[7489.9707,3477.1868,0],341.50705],
	["Land_HBarrier_1_F",[7489.4697,3478.6482,1.25],341.50711],
	["Land_HBarrier_1_F",[7489.4819,3478.6528,0],341.50705],
	["Land_HBarrier_1_F",[7488.9771,3480.0813,1.25],341.50711],
	["Land_HBarrier_1_F",[7488.9878,3480.0898,0],341.50705],
	["Land_HBarrier_1_F",[7488.4761,3481.5352,1.25],341.50711],
	["Land_HBarrier_1_F",[7488.4849,3481.5386,0],341.50705],
	["Land_HBarrier_1_F",[7488.0005,3482.9746,1.25],341.50711],
	["Land_HBarrier_1_F",[7488.0195,3482.9836,0],341.50705],
	["Land_HBarrier_1_F",[7487.5122,3484.4436,1.25],341.50711],
	["Land_HBarrier_1_F",[7487.5273,3484.4473,0],341.50705],
	["Land_HBarrier_1_F",[7487.0298,3485.8752,1.25],341.50711],
	["Land_HBarrier_1_F",[7487.0391,3485.8853,0],341.50705],
	["Land_HBarrier_1_F",[7486.5293,3487.3394,1.25],341.50711],
	["Land_HBarrier_1_F",[7486.5444,3487.3433,0],341.50705],
	["Land_HBarrier_1_F",[7486.0552,3488.7554,1.25],341.50711],
	["Land_HBarrier_1_F",[7486.0659,3488.7646,0],341.50705],
	["Land_HBarrier_1_F",[7485.5552,3490.2146,1.25],341.50711],
	["Land_HBarrier_1_F",[7485.5688,3490.2251,0],341.50705],
	["Land_HBarrier_1_F",[7485.0693,3491.646,1.25],341.50711],
	["Land_HBarrier_1_F",[7485.0801,3491.6533,0],341.50705],
	["Land_HBarrier_1_F",[7484.5605,3493.1072,1.25],341.50711],
	["Land_HBarrier_1_F",[7484.5737,3493.1104,0],341.50705],
	["Land_BagBunker_Small_F",[7521.5132,3508.1052,0],566.94452],
	["Land_BagFence_Round_F",[7525.0967,3510.071,0],971.50958],
	["Land_BagFence_Round_F",[7520.4722,3512.4358,0],878.87134],
	["Land_BagFence_Long_F",[7523.1987,3511.9045,0],748.80719],
	["Land_BagFence_Long_F",[7524.5986,3507.5862,0],477.78018],
	["Land_BagFence_Long_F",[7518.6807,3510.6187,0],477.78018],
	["Land_HBarrier_1_F",[7486.0674,3496.1177,1.25],71.512604],
	["Land_HBarrier_1_F",[7486.0718,3496.1074,0],71.512558],
	["Land_HBarrier_1_F",[7487.5166,3496.6221,1.25],71.512604],
	["Land_HBarrier_1_F",[7487.5288,3496.6108,0],71.512558],
	["Land_HBarrier_1_F",[7488.9556,3497.1013,1.25],71.512604],
	["Land_HBarrier_1_F",[7488.9575,3497.0867,0],71.512558],
	["Land_HBarrier_1_F",[7490.4141,3497.594,1.25],71.512604],
	["Land_HBarrier_1_F",[7490.4233,3497.5845,0],71.512558],
	["Land_HBarrier_1_F",[7491.8315,3498.0774,1.25],71.512604],
	["Land_HBarrier_1_F",[7491.8384,3498.0583,0],71.512558],
	["Land_HBarrier_1_F",[7493.2939,3498.5676,1.25],71.512604],
	["Land_HBarrier_1_F",[7493.3032,3498.562,0],71.512558],
	["Land_HBarrier_1_F",[7494.7207,3499.062,1.25],71.512604],
	["Land_HBarrier_1_F",[7494.7344,3499.0476,0],71.512558],
	["Land_HBarrier_1_F",[7496.1865,3499.55,1.25],71.512604],
	["Land_HBarrier_1_F",[7496.1914,3499.5393,0],71.512558],
	["Land_HBarrier_1_F",[7497.6377,3500.0349,1.25],71.512604],
	["Land_HBarrier_1_F",[7497.6411,3500.0288,0],71.512558],
	["Land_HBarrier_1_F",[7499.0952,3500.5288,1.25],71.512604],
	["Land_HBarrier_1_F",[7499.1069,3500.5144,0],71.512558],
	["Land_HBarrier_1_F",[7500.5259,3501.0176,1.25],71.512604],
	["Land_HBarrier_1_F",[7500.5313,3501.0093,0],71.512558],
	["Land_HBarrier_1_F",[7501.9858,3501.5198,1.25],71.512604],
	["Land_HBarrier_1_F",[7501.9883,3501.5022,0],71.512558],
	["Land_HBarrier_1_F",[7503.4106,3501.9878,1.25],71.512604],
	["Land_HBarrier_1_F",[7503.4111,3501.9773,0],71.512558],
	["Land_HBarrier_1_F",[7504.8647,3502.4849,1.25],71.512604],
	["Land_HBarrier_1_F",[7504.8726,3502.4722,0],71.512558],
	["Land_HBarrier_1_F",[7506.2959,3502.9756,1.25],71.512604],
	["Land_HBarrier_1_F",[7506.3091,3502.957,0],71.512558],
	["Land_HBarrier_1_F",[7507.7529,3503.4731,1.25],71.512604],
	["Land_HBarrier_1_F",[7507.7642,3503.4585,0],71.512558],
	["Land_HBarrier_1_F",[7509.2061,3503.9507,1.25],71.512604],
	["Land_HBarrier_1_F",[7509.21,3503.9331,0],71.512558],
	["Land_HBarrier_1_F",[7510.6665,3504.4412,1.25],71.512604],
	["Land_HBarrier_1_F",[7510.6709,3504.4275,0],71.512558],
	["Land_HBarrier_1_F",[7512.0986,3504.9307,1.25],71.512604],
	["Land_HBarrier_1_F",[7512.103,3504.9128,0],71.512558],
	["Land_HBarrier_1_F",[7513.5562,3505.4211,1.25],71.512604],
	["Land_HBarrier_1_F",[7513.5664,3505.4065,0],71.512558],
	["Land_HBarrier_1_F",[7514.9819,3505.8992,1.25],71.512604],
	["Land_HBarrier_1_F",[7514.9897,3505.8838,0],71.512558],
	["Land_HBarrier_1_F",[7516.437,3506.3945,1.25],71.512604],
	["Land_HBarrier_1_F",[7516.4414,3506.3809,0],71.512558],
	["Land_HBarrier_1_F",[7517.8691,3506.8838,1.25],71.512604],
	["Land_HBarrier_1_F",[7517.8774,3506.8682,0],71.512558],
	["Land_HBarrier_1_F",[7519.3335,3507.3843,1.25],71.512604],
	["Land_HBarrier_1_F",[7519.3389,3507.3613,0],71.512558],
	["Land_HBarrier_1_F",[7522.1831,3505.8828,1.25],161.48824],
	["Land_HBarrier_1_F",[7522.1709,3505.8765,0],161.48819],
	["Land_HBarrier_1_F",[7522.6875,3504.4297,1.25],161.48824],
	["Land_HBarrier_1_F",[7522.6733,3504.4243,0],161.48819],
	["Land_HBarrier_1_F",[7523.1729,3502.999,1.25],161.48824],
	["Land_HBarrier_1_F",[7523.1626,3502.9888,0],161.48819],
	["Land_HBarrier_1_F",[7523.6748,3501.5393,1.25],161.48824],
	["Land_HBarrier_1_F",[7523.6626,3501.5273,0],161.48819],
	["Land_HBarrier_1_F",[7524.1558,3500.1226,1.25],161.48824],
	["Land_HBarrier_1_F",[7524.1387,3500.1189,0],161.48819],
	["Land_HBarrier_1_F",[7524.6519,3498.6626,1.25],161.48824],
	["Land_HBarrier_1_F",[7524.6421,3498.6565,0],161.48819],
	["Land_HBarrier_1_F",[7525.1382,3497.23,1.25],161.48824],
	["Land_HBarrier_1_F",[7525.1206,3497.2249,0],161.48819],
	["Land_HBarrier_1_F",[7525.6294,3495.7627,1.25],161.48824],
	["Land_HBarrier_1_F",[7525.6133,3495.7617,0],161.48819],
	["Land_HBarrier_1_F",[7526.1133,3494.3191,1.25],161.48824],
	["Land_HBarrier_1_F",[7526.0967,3494.3154,0],161.48819],
	["Land_HBarrier_1_F",[7526.5205,3493.0657,1.25],161.48824],
	["Land_HBarrier_1_F",[7526.5044,3493.0654,0],161.48819],
	["Land_HBarrier_1_F",[7529.1401,3485.4075,1.25],161.48824],
	["Land_HBarrier_1_F",[7529.1304,3485.4065,0],161.48819],
	["Land_HBarrier_1_F",[7529.5537,3484.209,1.25],161.48824],
	["Land_HBarrier_1_F",[7529.5488,3484.2019,0],161.48819],
	["Land_HBarrier_1_F",[7530.0303,3482.7634,1.25],161.48824],
	["Land_HBarrier_1_F",[7530.0161,3482.7571,0],161.48819],
	["Land_HBarrier_1_F",[7530.5171,3481.2957,1.25],161.48824],
	["Land_HBarrier_1_F",[7530.5,3481.2917,0],161.48819],
	["Land_HBarrier_1_F",[7531.0029,3479.8665,1.25],161.48824],
	["Land_HBarrier_1_F",[7530.999,3479.8552,0],161.48819],
	["Land_HBarrier_1_F",[7531.5049,3478.4043,1.25],161.48824],
	["Land_HBarrier_1_F",[7531.4863,3478.3989,0],161.48819],
	["Land_HBarrier_1_F",[7531.9834,3476.9822,1.25],161.48824],
	["Land_HBarrier_1_F",[7531.9624,3476.9744,0],161.48819],
	["Land_HBarrier_1_F",[7532.4888,3475.5261,1.25],161.48824],
	["Land_HBarrier_1_F",[7532.4653,3475.5188,0],161.48819],
	["Land_HBarrier_1_F",[7532.9644,3474.1011,1.25],161.48824],
	["Land_HBarrier_1_F",[7532.957,3474.0896,0],161.48819],
	["Land_HBarrier_1_F",[7533.4746,3472.6367,1.25],161.48824],
	["Land_HBarrier_1_F",[7533.4639,3472.6333,0],161.48819],
	["Land_BagBunker_Small_F",[7483.5913,3495.2356,0],477.91794],
	["Land_BagFence_Round_F",[7482.0894,3499.2583,0],882.48315],
	["Land_BagFence_Round_F",[7479.6519,3494.7012,0],789.84491],
	["Land_BagFence_Long_F",[7480.4238,3497.501,0],477.14682],
	["Land_BagFence_Long_F",[7484.7285,3498.9382,0],388.75366],
	["Land_BagFence_Long_F",[7481.6704,3493.2205,0],388.75366],
	["Land_BagBunker_Small_F",[7534.0024,3470.4783,0],657.3963],
	["Land_BagFence_Round_F",[7535.5176,3466.4922,0],1061.9612],
	["Land_BagFence_Round_F",[7538.1147,3471.4268,0],969.32306],
	["Land_BagFence_Long_F",[7537.5601,3468.8196,0],836.52734],
	["Land_BagFence_Long_F",[7533.3057,3467.3508,0],568.23175],
	["Land_BagFence_Long_F",[7536.3975,3473.2437,0],568.23175],
	["Land_HBarrier_1_F",[7531.8833,3472.8069,0],251.13441],
	["Land_HBarrier_1_F",[7530.4458,3472.3159,0],251.13441],
	["Land_HBarrier_1_F",[7531.916,3472.8196,1.25],251.13441],
	["Land_HBarrier_1_F",[7530.4849,3472.3257,1.25],251.13441],
	["Land_HBarrier_1_F",[7529.0044,3471.8352,0],251.13441],
	["Land_HBarrier_1_F",[7526.7979,3469.3242,0],341.05817],
	["Land_HBarrier_1_F",[7526.7939,3469.3611,1.25],341.05786],
	["Land_HBarrier_1_F",[7526.314,3470.7473,0],341.05817],
	["Land_HBarrier_1_F",[7526.3203,3470.7437,1.25],341.05786],
	["Land_HBarrier_1_F",[7518.9873,3505.8225,0],161.29436],
	["Land_HBarrier_1_F",[7519.4727,3504.3887,0],161.29436],
	["Land_HBarrier_1_F",[7518.9727,3505.8533,1.25],161.29436],
	["Land_HBarrier_1_F",[7519.4644,3504.4233,1.25],161.29436],
	["Land_HBarrier_1_F",[7519.9556,3502.9397,0],161.29436],
	["Land_HBarrier_1_F",[7522.4541,3500.7256,0],251.21815],
	["Land_HBarrier_1_F",[7522.418,3500.7256,1.25],251.21785],
	["Land_HBarrier_1_F",[7521.0259,3500.2488,0],251.21815],
	["Land_HBarrier_1_F",[7521.0366,3500.26,1.25],251.21785],
	["Land_HBarrier_1_F",[7486.1499,3492.9365,0],431.39252],
	["Land_HBarrier_1_F",[7487.5908,3493.4133,0],431.39252],
	["Land_HBarrier_1_F",[7486.1226,3492.9277,1.25],431.39252],
	["Land_HBarrier_1_F",[7487.5586,3493.4026,1.25],431.39252],
	["Land_HBarrier_1_F",[7489.0366,3493.9048,0],431.39252],
	["Land_HBarrier_1_F",[7491.25,3496.3982,0],521.31628],
	["Land_HBarrier_1_F",[7491.2554,3496.3567,1.25],521.31598],
	["Land_HBarrier_1_F",[7491.7358,3494.9668,0],521.31628],
	["Land_HBarrier_1_F",[7499.0479,3459.98,0],340.97278],
	["Land_HBarrier_1_F",[7498.5552,3461.4141,0],340.97278],
	["Land_HBarrier_1_F",[7499.0522,3459.9509,1.25],340.97278],
	["Land_HBarrier_1_F",[7498.5635,3461.3809,1.25],340.97278],
	["Land_HBarrier_1_F",[7498.0562,3462.8535,0],340.97278],
	["Land_HBarrier_1_F",[7495.5503,3465.0569,0],430.89651],
	["Land_HBarrier_1_F",[7495.5898,3465.0491,1.25],430.89621],
	["Land_HBarrier_1_F",[7496.9731,3465.5469,0],430.89651],
	["Land_HBarrier_1_F",[7496.9673,3465.5354,1.25],430.89621],
	["Land_HBarrier_1_F",[7508.3882,3466.1711,1.25],161.48824],
	["Land_HBarrier_1_F",[7508.3711,3466.1821,0],161.48819],
	["Land_HBarrier_1_F",[7508.876,3464.7646,1.25],161.48824],
	["Land_HBarrier_1_F",[7508.8633,3464.7595,0],161.48819],
	["Land_HBarrier_1_F",[7509.3564,3463.2998,1.25],161.48824],
	["Land_HBarrier_1_F",[7509.3462,3463.2949,0],161.48819],
	["Land_HBarrier_1_F",[7507.9155,3467.5676,1.25],161.48824],
	["Land_HBarrier_1_F",[7507.8984,3467.5801,0],161.48819],
	["Land_HBarrier_1_F",[7507.439,3468.9875,1.25],161.48824],
	["Land_HBarrier_1_F",[7507.4263,3468.9983,0],161.48819],
	["Land_HBarrier_1_F",[7499.4653,3496.0603,1.25],161.48824],
	["Land_HBarrier_1_F",[7499.4492,3496.0725,0],161.48819],
	["Land_HBarrier_1_F",[7499.9473,3494.655,1.25],161.48824],
	["Land_HBarrier_1_F",[7499.9365,3494.6484,0],161.48819],
	["Land_HBarrier_1_F",[7500.9111,3491.7861,1.25],161.48824],
	["Land_HBarrier_1_F",[7500.8979,3491.7805,0],161.48819],
	["Land_HBarrier_1_F",[7498.9878,3497.4609,1.25],161.48824],
	["Land_HBarrier_1_F",[7498.9741,3497.4712,0],161.48819],
	["Land_HBarrier_1_F",[7498.5176,3498.8784,1.25],161.48824],
	["Land_HBarrier_1_F",[7498.499,3498.8923,0],161.48819],
	["Heli_H_civil",[7502.4604,3480.3276,0],161.26651],
	["Land_BagFence_Round_F",[7530.126,3496.4617,0],923.12946],
	["Land_BagFence_Long_F",[7527.5151,3496.7068,0],522.03827],
	["Land_BagFence_Long_F",[7531.6855,3494.8171,0],611.66589],
	["Land_BagFence_Round_F",[7534.2583,3484.2512,0],1013.0835],
	["Land_BagFence_Long_F",[7534.0405,3487.2825,0],611.99213],
	["Land_BagFence_Long_F",[7535.1997,3489.062,0],701.62],
	["Land_BagFence_Long_F",[7532.1567,3483.1008,0],701.62],
	["Land_BagFence_Long_F",[7533.6616,3494.0789,0],701.63037],
	["Land_Cargo20_grey_F",[7495.0132,3468.9673,0.00137329],790.99469],
	["Land_Cargo20_military_green_F",[7529.9595,3476.2087,0.00137329],790.99451],
	["Land_HBarrier_1_F",[7491.7236,3494.9692,1.25],521.31598],
	["Land_HBarrier_1_F",[7489.0205,3493.905,1.25],71.512604],
	["Land_HBarrier_1_F",[7529.0288,3471.8362,1.25],71.512604],
	["Land_HBarrier_1_F",[7519.9634,3502.9639,1.25],341.05786],
	["Land_HBarrier_1_F",[7498.0513,3462.8665,1.25],341.05786],
	["Land_Cargo_House_V2_F",[7503.6577,3467.4634,0],161.26651],
	["Land_Cargo_House_V2_F",[7504.6582,3497.2881,0],340.98059],
	["Land_BagFence_Long_F",[7506.6201,3501.0164,0],611.44965],
	["Land_BagFence_Long_F",[7507.54,3498.2988,0],611.44965],
	["Land_BagFence_Long_F",[7502.7637,3491.9963,0],701.07745],
	["Land_BagFence_Long_F",[7505.5249,3468.5405,0],701.07745],
	["Land_BagFence_Long_F",[7500.6494,3464.3926,0],611.44965],
	["Land_BagFence_Long_F",[7501.5703,3461.6765,0],611.44965],
	["Land_HBarrier_1_F",[7525.8281,3472.1907,0],341.05817],
	["Land_HBarrier_1_F",[7525.835,3472.1802,1.25],341.05786],
	["Land_BagFence_Long_F",[7501.2808,3490.4456,0],611.44965],
	["Land_BagFence_Long_F",[7496.9429,3467.8274,0],611.44965],
	["Land_BagFence_Long_F",[7496.0269,3470.5366,0],611.44965],
	["Land_BagFence_Long_F",[7529.0894,3474.1724,0],611.44965],
	["Land_BagFence_Long_F",[7528.168,3476.8877,0],611.44965],
	["Land_BagFence_Long_F",[7506.8901,3470.616,0],611.44965],
	["Land_HBarrier_1_F",[7528.9131,3486.0833,1.25],161.48824],
	["Land_HBarrier_1_F",[7528.9038,3486.0835,0],161.48819],
	["Land_HBarrier_1_F",[7526.1294,3485.3018,1.25],251.53139],
	["Land_HBarrier_1_F",[7526.1265,3485.314,0],251.53133],
	["Land_HBarrier_1_F",[7524.6621,3484.8254,0],251.53133],
	["Land_HBarrier_1_F",[7531.6543,3487.1716,0],251.53133],
	["Land_HBarrier_1_F",[7530.1973,3486.6682,1.25],251.53139],
	["Land_HBarrier_1_F",[7530.1963,3486.6772,0],251.53133],
	["Land_BagFence_Long_F",[7519.3579,3500.0962,0],701.07745],
	["Land_HBarrier_1_F",[7526.7007,3492.5369,1.25],161.48824],
	["Land_HBarrier_1_F",[7526.6846,3492.5369,0],161.48819],
	["Land_HBarrier_1_F",[7529.5024,3493.3237,0],251.53133],
	["Land_HBarrier_1_F",[7528.0439,3492.812,1.25],251.53139],
	["Land_HBarrier_1_F",[7528.042,3492.8271,0],251.53133],
	["Land_HBarrier_1_F",[7524.0171,3491.4783,1.25],251.53139],
	["Land_HBarrier_1_F",[7524.0093,3491.4939,0],251.53133],
	["Land_HBarrier_1_F",[7522.5493,3491.0073,0],251.53133],
	["Land_BagFence_Long_F",[7490.582,3489.7749,0],791.21082],
	["Land_HBarrier_1_F",[7500.4229,3493.2532,1.25],161.48824],
	["Land_HBarrier_1_F",[7500.4111,3493.2454,0],161.48819],
	["Land_BagFence_Round_F",[7523.0234,3483.4578,0],832.60101],
	["Land_BagFence_Long_F",[7521.2759,3470.7271,0],701.07745],
	["Land_BagFence_Round_F",[7520.5283,3490.9136,0],742.50653],
	["Land_LampHarbour_F",[7519.9834,3499.8213,0.00137329],586.90564],
	["Land_LampHarbour_F",[7528.6924,3472.8318,0.00137329],664.34967],
	["Land_LampHarbour_F",[7492.3164,3493.9521,0.00137329],479.01053],
	["Land_LampHarbour_F",[7500.2871,3460.094,0.00137329],17.650322],
	["Land_Obstacle_Bridge_F",[7491.1499,3477.3376,0.00137329],341.29004],
	["Land_CratesWooden_F",[7511.1509,3463.9473,0.00137329],340.9306],
	["Land_Obstacle_Bridge_F",[7512.5728,3503.8379,0.00137329],431.33908],
	["Land_Obstacle_Bridge_F",[7519.1045,3466.533,0.00137329],431.33908],
	["Land_Obstacle_Bridge_F",[7487.7803,3487.3416,0.00137329],341.29004],
	["Land_HBarrier_1_F",[7490.0791,3491.2463,0],341.05817],
	["Land_HBarrier_1_F",[7490.0835,3491.2375,1.25],341.05786],
	["Land_HBarrier_1_F",[7489.5938,3492.6833,0],341.05817],
	["Land_HBarrier_1_F",[7489.584,3492.6697,1.25],341.05786],
	["Land_HBarrier_1_F",[7523.0781,3471.4241,0],430.89651],
	["Land_HBarrier_1_F",[7523.1182,3471.4243,1.25],430.89621],
	["Land_HBarrier_1_F",[7524.5049,3471.9192,0],430.89651],
	["Land_HBarrier_1_F",[7524.501,3471.9104,1.25],430.89621],
	["Land_HBarrier_1_F",[7527.5679,3485.7734,1.25],251.53139],
	["Land_HBarrier_1_F",[7527.5684,3485.7876,0],251.53133],
	["Land_HBarrier_1_F",[7525.4521,3491.9536,1.25],251.53139],
	["Land_HBarrier_1_F",[7525.4497,3491.9673,0],251.53133],
	["Land_TTowerSmall_1_F",[7523.5605,3497.8289,0],161.26651],
	["Land_PowerGenerator_F",[7523.1714,3499.1296,0],340.77158],
	["Land_BarrelSand_F",[7509.9336,3464.5576,0],161.26651],
	["Land_HBarrier_1_F",[7524.6157,3463.1064,0],251.53133],
	["Land_HBarrier_1_F",[7523.1992,3462.6416,0],251.53133],
	["Land_HBarrier_1_F",[7521.8057,3462.168,0],251.53133],
	["Land_HBarrier_1_F",[7511.5986,3458.502,0],251.53133],
	["Land_HBarrier_1_F",[7510.1816,3458.0359,0],251.53133],
	["Land_HBarrier_1_F",[7508.7881,3457.5593,0],251.53133],
	["Land_HBarrier_1_F",[7509.4229,3508.2263,0],251.53142],
	["Land_HBarrier_1_F",[7508.0039,3507.7629,0],251.53142],
	["Land_HBarrier_1_F",[7506.6128,3507.2874,0],251.53142],
	["Land_HBarrier_1_F",[7496.4048,3503.6199,0],251.53142],
	["Land_HBarrier_1_F",[7494.9844,3503.157,0],251.53142],
	["Land_HBarrier_1_F",[7493.5928,3502.6821,0],251.53133],
	["Land_HBarrier_1_F",[7483.6406,3482.9194,0],161.13799],
	["Land_HBarrier_1_F",[7484.1133,3481.5,0],161.13799],
	["Land_HBarrier_1_F",[7484.5967,3480.113,0],161.13799],
	["Land_HBarrier_1_F",[7488.333,3469.9336,0],161.13799],
	["Land_HBarrier_1_F",[7488.8066,3468.5134,0],161.13799],
	["Land_HBarrier_1_F",[7489.2925,3467.127,0],161.13799]
];

_objects