// genesis
// cell parameter file for a reconstructed CA1 pyramidal cell model
// created by Szabolcs Kali (05/25/2005)

*relative

*set_global RM 30.0      //ohm*m^2
*set_global RA 1.0      //ohm*m
*set_global CM 0.01     //F/m^2
*set_global EREST_ACT   -0.065   // volts
*set_global ELEAK -0.065   // volt

// The format for each compartment parameter line is :
// name  parent  x       y       z       d       ch      dens ...
// For channels, "dens" =  maximum conductance per unit area of compartment

1	none	20	0	0	20	Na_soma	300	K_DR	100	K_A_prox	35			Ca_conc	-5e+13	CaT	0	CaL	20	CaN	20	CaR	0	K_M	50	K_C	40	K_AHP	30	H_CA1pyr_prox	1			Ex_channel	-1e-10	NMDA	-2e-11
2	1	36.8	-5.1	-18	2.1	Na_dend	100	K_DR	40	K_A_prox	57.70541			Ca_conc	-2.3e+14	CaT	7.064128	CaL	14.49566	CaN	20	CaR	20	K_M	30	K_C	28.99132			H_CA1pyr_prox	1.825651			Ex_channel	-1e-10	NMDA	-2e-11
3	2	1.3	9.8	-18	0.5	Na_dend	100	K_DR	40	K_A_prox	69.00025			Ca_conc	-1.9e+15	CaT	8.090931	CaL	11.75752	CaN	20	CaR	20	K_M	30	K_C	23.51503			H_CA1pyr_prox	2.236373			Ex_channel	-1e-10	NMDA	-2e-11
4	3	13.371	13.433	-19.662	0.514	Na_dend	100	K_DR	40	K_A_prox	84.02062			Ca_conc	-1.4e+15	CaT	9.45642	CaL	8.116214	CaN	20	CaR	20	K_M	30	K_C	16.23243			H_CA1pyr_prox	2.782568			Ex_channel	-1e-10	NMDA	-2e-11
5	4	19.141	11.975	-15.334	0.514	Na_dend	100	K_DR	40			K_A_dist	99.03179	Ca_conc	-1.4e+15	CaT	10.82107	CaL	4.477141	CaN	20	CaR	20	K_M	30	K_C	8.954283					H_CA1pyr_dist	3.328429	Ex_channel	-1e-10	NMDA	-2e-11
6	5	22.488	12.992	-7.004	0.5	Na_dend	100	K_DR	40			K_A_dist	113.8263	Ca_conc	-1.5e+15	CaT	12.16602	CaL	0.890604	CaN	20	CaR	20	K_M	30	K_C	1.781208					H_CA1pyr_dist	3.866409	Ex_channel	-1e-10	NMDA	-2e-11
7	3	1.4	7.5	-6	0.5	Na_dend	100	K_DR	40	K_A_prox	74.33865			Ca_conc	-4.1e+15	CaT	8.576241	CaL	10.46336	CaN	20	CaR	20	K_M	30	K_C	20.92672			H_CA1pyr_prox	2.430496			Ex_channel	-1e-10	NMDA	-2e-11
8	7	-0.185	6.877	-18.212	0.536	Na_dend	100	K_DR	40	K_A_prox	85.04606			Ca_conc	-1.9e+15	CaT	9.549642	CaL	7.867621	CaN	20	CaR	20	K_M	30	K_C	15.73524			H_CA1pyr_prox	2.819857			Ex_channel	-1e-10	NMDA	-2e-11
9	8	6.585	-1.377	-17.788	0.5	Na_dend	100	K_DR	40			K_A_dist	95.50577	Ca_conc	-2.1e+15	CaT	10.50052	CaL	5.331933	CaN	20	CaR	20	K_M	30	K_C	10.66387					H_CA1pyr_dist	3.20021	Ex_channel	-1e-10	NMDA	-2e-11
10	7	2.6	0.8	-18	0.5	Na_dend	100	K_DR	40	K_A_prox	84.35106			Ca_conc	-2.2e+15	CaT	9.48646	CaL	8.036106	CaN	20	CaR	20	K_M	30	K_C	16.07221			H_CA1pyr_prox	2.794584			Ex_channel	-1e-10	NMDA	-2e-11
11	2	1.7	-0.5	0	2.1	Na_dend	100	K_DR	40	K_A_prox	58.68001			Ca_conc	-5.4e+15	CaT	7.152728	CaL	14.25939	CaN	20	CaR	20	K_M	30	K_C	28.51878			H_CA1pyr_prox	1.861091			Ex_channel	-1e-10	NMDA	-2e-11
12	11	1.7	-0.2	0	2.1	Na_dend	100	K_DR	40	K_A_prox	59.62146			Ca_conc	-5.6e+15	CaT	7.238315	CaL	14.03116	CaN	20	CaR	20	K_M	30	K_C	28.06232			H_CA1pyr_prox	1.895326			Ex_channel	-1e-10	NMDA	-2e-11
13	12	7.7	-1.8	6	2.1	Na_dend	100	K_DR	40	K_A_prox	65.08089			Ca_conc	-9.6e+14	CaT	7.734626	CaL	12.70766	CaN	20	CaR	20	K_M	30	K_C	25.41533			H_CA1pyr_prox	2.09385			Ex_channel	-1e-10	NMDA	-2e-11
14	13	5.21	-23.431	21.252	0.508	Na_dend	100	K_DR	40	K_A_prox	82.71354			Ca_conc	-1.2e+15	CaT	9.337595	CaL	8.433081	CaN	20	CaR	20	K_M	30	K_C	16.86616			H_CA1pyr_prox	2.735038			Ex_channel	-1e-10	NMDA	-2e-11
15	14	10.679	-17.556	24.787	0.512	Na_dend	100	K_DR	40			K_A_dist	100.4219	Ca_conc	-1.2e+15	CaT	10.94745	CaL	4.140143	CaN	20	CaR	20	K_M	30	K_C	8.280285					H_CA1pyr_dist	3.378979	Ex_channel	-1e-10	NMDA	-2e-11
16	15	6.008	-6.709	30.658	0.504	Na_dend	100	K_DR	40			K_A_dist	117.9963	Ca_conc	-1.2e+15	CaT	12.54512	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.018047	Ex_channel	-1e-10	NMDA	-2e-11
17	16	5.685	-7.423	30.774	0.51	Na_dend	100	K_DR	40			K_A_dist	135.6859	Ca_conc	-1.2e+15	CaT	14.15327	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.661307	Ex_channel	-1e-10	NMDA	-2e-11
18	17	15.318	-13.281	24.529	0.5	Na_dend	100	K_DR	40			K_A_dist	153.1885	Ca_conc	-1.3e+15	CaT	15.74441	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.297765	Ex_channel	-1e-10	NMDA	-2e-11
19	13	12	-1.9	6	2.1	Na_dend	100	K_DR	40	K_A_prox	72.53354			Ca_conc	-7e+14	CaT	8.41214	CaL	10.90096	CaN	20	CaR	20	K_M	30	K_C	21.80192			H_CA1pyr_prox	2.364856			Ex_channel	-1e-10	NMDA	-2e-11
20	19	20.806	-17.474	-12.447	0.584	Na_dend	100	K_DR	40	K_A_prox	88.9707			Ca_conc	-1.1e+15	CaT	9.906427	CaL	6.916194	CaN	20	CaR	20	K_M	30	K_C	13.83239			H_CA1pyr_prox	2.962571			Ex_channel	-1e-10	NMDA	-2e-11
21	20	10.804	-12.849	-23.473	0.532	Na_dend	100	K_DR	40			K_A_dist	104.8428	Ca_conc	-1.3e+15	CaT	11.34935	CaL	3.068412	CaN	20	CaR	20	K_M	30	K_C	6.136824					H_CA1pyr_dist	3.539738	Ex_channel	-1e-10	NMDA	-2e-11
22	21	-0.51	-14.877	-24.08	0.5	Na_dend	100	K_DR	40			K_A_dist	120.4131	Ca_conc	-1.4e+15	CaT	12.76482	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.10593	Ex_channel	-1e-10	NMDA	-2e-11
23	19	13.2	-2.3	0	2.1	Na_dend	100	K_DR	40	K_A_prox	79.90292			Ca_conc	-7.1e+14	CaT	9.082084	CaL	9.114443	CaN	20	CaR	20	K_M	30	K_C	18.22889			H_CA1pyr_prox	2.632834			Ex_channel	-1e-10	NMDA	-2e-11
24	23	28.2	-1.1	12	2.1	Na_dend	100	K_DR	40			K_A_dist	96.76964	Ca_conc	-3.1e+14	CaT	10.61542	CaL	5.025543	CaN	20	CaR	20	K_M	30	K_C	10.05109					H_CA1pyr_dist	3.246169	Ex_channel	-1e-10	NMDA	-2e-11
25	24	23.712	-26.197	-5.572	0.564	Na_dend	100	K_DR	40			K_A_dist	116.4439	Ca_conc	-9.9e+14	CaT	12.40399	CaL	0.256029	CaN	20	CaR	20	K_M	30	K_C	0.512059					H_CA1pyr_dist	3.961596	Ex_channel	-1e-10	NMDA	-2e-11
26	25	24.458	-18.549	-15.798	0.516	Na_dend	100	K_DR	40			K_A_dist	135.4315	Ca_conc	-1.1e+15	CaT	14.13014	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.652055	Ex_channel	-1e-10	NMDA	-2e-11
27	26	25.311	-9.768	-21.008	0.51	Na_dend	100	K_DR	40			K_A_dist	154.3038	Ca_conc	-1.1e+15	CaT	15.8458	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.338319	Ex_channel	-1e-10	NMDA	-2e-11
28	27	24.519	-4.786	-23.622	0.5	Na_dend	100	K_DR	40			K_A_dist	173.2136	Ca_conc	-1.2e+15	CaT	17.56487	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.025949	Ex_channel	-1e-10	NMDA	-2e-11
29	24	24.5	-0.4	6	2	Na_dend	100	K_DR	40			K_A_dist	110.6446	Ca_conc	-4e+14	CaT	11.87678	CaL	1.66192	CaN	20	CaR	20	K_M	30	K_C	3.32384					H_CA1pyr_dist	3.750712	Ex_channel	-1e-10	NMDA	-2e-11
30	29	29.534	9.261	-5.809	0.636	Na_dend	100	K_DR	40			K_A_dist	127.9654	Ca_conc	-1e+15	CaT	13.4514	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.380559	Ex_channel	-1e-10	NMDA	-2e-11
31	30	26.452	2.322	-13.281	0.546	Na_dend	100	K_DR	40			K_A_dist	144.2948	Ca_conc	-1.2e+15	CaT	14.93589	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.974355	Ex_channel	-1e-10	NMDA	-2e-11
32	31	23.922	0.602	-15.765	0.506	Na_dend	100	K_DR	40			K_A_dist	160.0555	Ca_conc	-1.4e+15	CaT	16.36868	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.547473	Ex_channel	-1e-10	NMDA	-2e-11
33	32	22.292	-0.018	-18.133	0.51	Na_dend	100	K_DR	40			K_A_dist	175.8601	Ca_conc	-1.4e+15	CaT	17.80547	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.122186	Ex_channel	-1e-10	NMDA	-2e-11
34	33	20.7	4.933	-19.012	0.5	Na_dend	100	K_DR	40			K_A_dist	191.5547	Ca_conc	-1.4e+15	CaT	19.23225	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.692899	Ex_channel	-1e-10	NMDA	-2e-11
35	29	9.7	1	6	2	Na_dend	100	K_DR	40			K_A_dist	116.9418	Ca_conc	-8.7e+14	CaT	12.44925	CaL	0.135325	CaN	20	CaR	20	K_M	30	K_C	0.270651					H_CA1pyr_dist	3.979701	Ex_channel	-1e-10	NMDA	-2e-11
36	35	10.8	1	0	2	Na_dend	100	K_DR	40			K_A_dist	122.9072	Ca_conc	-9.2e+14	CaT	12.99156	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.196625	Ex_channel	-1e-10	NMDA	-2e-11
37	36	5.35	24.058	-23.115	0.518	Na_dend	100	K_DR	40			K_A_dist	141.4913	Ca_conc	-1.1e+15	CaT	14.68102	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.87241	Ex_channel	-1e-10	NMDA	-2e-11
38	37	-4.803	19.181	-27.188	0.512	Na_dend	100	K_DR	40			K_A_dist	159.9811	Ca_conc	-1.2e+15	CaT	16.36192	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.544769	Ex_channel	-1e-10	NMDA	-2e-11
39	38	-7.51	17.315	-27.981	0.516	Na_dend	100	K_DR	40			K_A_dist	178.5443	Ca_conc	-1.1e+15	CaT	18.04948	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.219794	Ex_channel	-1e-10	NMDA	-2e-11
40	39	1.216	21.88	-25.721	0.518	Na_dend	100	K_DR	40			K_A_dist	197.129	Ca_conc	-1.1e+15	CaT	19.739	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.895599	Ex_channel	-1e-10	NMDA	-2e-11
41	40	7.447	28.166	-15.995	0.5	Na_dend	100	K_DR	40			K_A_dist	215.4087	Ca_conc	-1.2e+15	CaT	21.40079	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.560316	Ex_channel	-1e-10	NMDA	-2e-11
42	36	3.5	-0.3	0	2	Na_dend	100	K_DR	40			K_A_dist	124.8392	Ca_conc	-2.8e+15	CaT	13.1672	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.266882	Ex_channel	-1e-10	NMDA	-2e-11
43	42	22.268	2.055	-7.815	0.57	Na_dend	100	K_DR	40			K_A_dist	137.8681	Ca_conc	-1.5e+15	CaT	14.35165	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.740659	Ex_channel	-1e-10	NMDA	-2e-11
44	43	19.732	-1.855	-10.185	0.5	Na_dend	100	K_DR	40			K_A_dist	150.1237	Ca_conc	-1.8e+15	CaT	15.46579	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.186316	Ex_channel	-1e-10	NMDA	-2e-11
45	44	27.369	-4.141	-4.813	0.514	Na_dend	100	K_DR	40			K_A_dist	165.5764	Ca_conc	-1.4e+15	CaT	16.87058	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.748233	Ex_channel	-1e-10	NMDA	-2e-11
46	45	27.531	-3.059	-1.187	0.5	Na_dend	100	K_DR	40			K_A_dist	180.8256	Ca_conc	-1.4e+15	CaT	18.25687	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.30275	Ex_channel	-1e-10	NMDA	-2e-11
47	44	18.847	5.283	-19.224	0.512	Na_dend	100	K_DR	40			K_A_dist	165.213	Ca_conc	-1.4e+15	CaT	16.83754	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.735017	Ex_channel	-1e-10	NMDA	-2e-11
48	47	5.653	13.617	-22.776	0.5	Na_dend	100	K_DR	40			K_A_dist	180.1354	Ca_conc	-1.5e+15	CaT	18.19412	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.27765	Ex_channel	-1e-10	NMDA	-2e-11
49	42	3.3	-0.7	6	2	Na_dend	100	K_DR	40			K_A_dist	128.6251	Ca_conc	-1.5e+15	CaT	13.51137	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.404548	Ex_channel	-1e-10	NMDA	-2e-11
50	49	7.193	31.605	4.33	0.548	Na_dend	100	K_DR	40			K_A_dist	146.6107	Ca_conc	-1.1e+15	CaT	15.14643	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.058571	Ex_channel	-1e-10	NMDA	-2e-11
51	50	11.489	22.585	-20.647	0.524	Na_dend	100	K_DR	40			K_A_dist	164.588	Ca_conc	-1.2e+15	CaT	16.78073	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.712292	Ex_channel	-1e-10	NMDA	-2e-11
52	51	4.653	17.718	-26.434	0.506	Na_dend	100	K_DR	40			K_A_dist	182.2766	Ca_conc	-1.2e+15	CaT	18.38878	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.355513	Ex_channel	-1e-10	NMDA	-2e-11
53	52	13.065	2.192	-29.249	0.5	Na_dend	100	K_DR	40			K_A_dist	199.9367	Ca_conc	-1.2e+15	CaT	19.99424	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.997698	Ex_channel	-1e-10	NMDA	-2e-11
54	49	12.5	-0.7	0	2	Na_dend	100	K_DR	40			K_A_dist	135.5108	Ca_conc	-8e+14	CaT	14.13735	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.65494	Ex_channel	-1e-10	NMDA	-2e-11
55	54	27.272	-8.088	-12.273	0.556	Na_dend	100	K_DR	40			K_A_dist	152.5502	Ca_conc	-1.2e+15	CaT	15.68638	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.274554	Ex_channel	-1e-10	NMDA	-2e-11
56	55	27.015	-2.856	-13.464	0.534	Na_dend	100	K_DR	40			K_A_dist	169.2257	Ca_conc	-1.2e+15	CaT	17.20234	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.880935	Ex_channel	-1e-10	NMDA	-2e-11
57	56	21.813	-11.256	-16.263	0.5	Na_dend	100	K_DR	40			K_A_dist	185.4203	Ca_conc	-1.4e+15	CaT	18.67457	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.469829	Ex_channel	-1e-10	NMDA	-2e-11
58	54	17.4	-0.9	12	2	Na_dend	100	K_DR	40			K_A_dist	147.1466	Ca_conc	-4.7e+14	CaT	15.19514	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.078057	Ex_channel	-1e-10	NMDA	-2e-11
59	58	2.8	0.2	24	2	Na_dend	100	K_DR	40			K_A_dist	160.4365	Ca_conc	-4.1e+14	CaT	16.40332	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.561329	Ex_channel	-1e-10	NMDA	-2e-11
60	58	2	-0.3	1.4	2	Na_dend	100	K_DR	40			K_A_dist	148.4994	Ca_conc	-4.1e+15	CaT	15.31813	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.12725	Ex_channel	-1e-10	NMDA	-2e-11
61	60	6.2	-0.5	4.6	1.2	Na_dend	100	K_DR	40			K_A_dist	152.7543	Ca_conc	-2.2e+15	CaT	15.70494	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.281976	Ex_channel	-1e-10	NMDA	-2e-11
62	61	4.8	-0.5	0	1.2	Na_dend	100	K_DR	40			K_A_dist	155.4086	Ca_conc	-3.5e+15	CaT	15.94624	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.378495	Ex_channel	-1e-10	NMDA	-2e-11
63	62	11.8	-2.4	6	1.2	Na_dend	100	K_DR	40			K_A_dist	162.8081	Ca_conc	-1.2e+15	CaT	16.61892	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.647568	Ex_channel	-1e-10	NMDA	-2e-11
64	63	25.737	10.761	-5.913	0.53	Na_dend	100	K_DR	40			K_A_dist	178.4918	Ca_conc	-1.3e+15	CaT	18.04471	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.217885	Ex_channel	-1e-10	NMDA	-2e-11
65	64	19.798	10.971	-16.792	0.512	Na_dend	100	K_DR	40			K_A_dist	193.9926	Ca_conc	-1.4e+15	CaT	19.45388	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.78155	Ex_channel	-1e-10	NMDA	-2e-11
66	65	17.224	7.942	-20.78	0.51	Na_dend	100	K_DR	40			K_A_dist	209.4666	Ca_conc	-1.4e+15	CaT	20.8606	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.34424	Ex_channel	-1e-10	NMDA	-2e-11
67	66	15.241	6.126	-22.515	0.5	Na_dend	100	K_DR	40			K_A_dist	224.7951	Ca_conc	-1.4e+15	CaT	22.2541	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.901642	Ex_channel	-1e-10	NMDA	-2e-11
68	63	14.9	-4	6	1.2	Na_dend	100	K_DR	40			K_A_dist	171.9124	Ca_conc	-1e+15	CaT	17.44658	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.978633	Ex_channel	-1e-10	NMDA	-2e-11
69	68	17.986	8.621	3.329	0.554	Na_dend	100	K_DR	40			K_A_dist	183.0341	Ca_conc	-1.8e+15	CaT	18.45765	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.383058	Ex_channel	-1e-10	NMDA	-2e-11
70	69	18.614	4.279	2.671	0.5	Na_dend	100	K_DR	40			K_A_dist	193.641	Ca_conc	-2.1e+15	CaT	19.42191	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.768765	Ex_channel	-1e-10	NMDA	-2e-11
71	70	26.624	20.463	8.323	0.518	Na_dend	100	K_DR	40			K_A_dist	212.6685	Ca_conc	-1.1e+15	CaT	21.15169	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.460674	Ex_channel	-1e-10	NMDA	-2e-11
72	71	21.676	25.237	9.677	0.5	Na_dend	100	K_DR	40			K_A_dist	231.7243	Ca_conc	-1.2e+15	CaT	22.88402	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.15361	Ex_channel	-1e-10	NMDA	-2e-11
73	70	23.186	5.899	14.082	0.518	Na_dend	100	K_DR	40			K_A_dist	208.9098	Ca_conc	-1.4e+15	CaT	20.80998	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.323992	Ex_channel	-1e-10	NMDA	-2e-11
74	73	19.358	6.016	18.537	0.508	Na_dend	100	K_DR	40			K_A_dist	224.0177	Ca_conc	-1.4e+15	CaT	22.18343	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.873372	Ex_channel	-1e-10	NMDA	-2e-11
75	74	14.456	8.885	21.381	0.5	Na_dend	100	K_DR	40			K_A_dist	239.0305	Ca_conc	-1.5e+15	CaT	23.54822	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.41929	Ex_channel	-1e-10	NMDA	-2e-11
76	68	42.2	-1.2	6	1.2	Na_dend	100	K_DR	40			K_A_dist	195.3651	Ca_conc	-3.9e+14	CaT	19.57865	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.831459	Ex_channel	-1e-10	NMDA	-2e-11
77	76	1.559	-31.768	12.403	0.532	Na_dend	100	K_DR	40			K_A_dist	214.1416	Ca_conc	-1.1e+15	CaT	21.2856	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.514238	Ex_channel	-1e-10	NMDA	-2e-11
78	77	16.472	-24.861	15.813	0.548	Na_dend	100	K_DR	40			K_A_dist	232.7072	Ca_conc	-1.1e+15	CaT	22.97338	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.189352	Ex_channel	-1e-10	NMDA	-2e-11
79	78	19.802	-20.853	18.061	0.522	Na_dend	100	K_DR	40			K_A_dist	251.3843	Ca_conc	-1.1e+15	CaT	24.6713	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.868518	Ex_channel	-1e-10	NMDA	-2e-11
80	79	8.167	-17.118	13.723	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
81	76	6.5	-0.9	0	1.2	Na_dend	100	K_DR	40			K_A_dist	198.9742	Ca_conc	-2.5e+15	CaT	19.90675	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.962699	Ex_channel	-1e-10	NMDA	-2e-11
82	81	8.85	2.481	20.509	0.21	Na_dend	100	K_DR	40			K_A_dist	211.3351	Ca_conc	-4.2e+15	CaT	21.03046	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.412186	Ex_channel	-1e-10	NMDA	-2e-11
83	82	7.101	-0.508	20.867	0.2	Na_dend	100	K_DR	40			K_A_dist	223.4615	Ca_conc	-4.5e+15	CaT	22.13286	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.853146	Ex_channel	-1e-10	NMDA	-2e-11
84	83	6.241	1.319	21.165	0.2	Na_dend	100	K_DR	40			K_A_dist	235.6195	Ca_conc	-4.5e+15	CaT	23.23813	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.295253	Ex_channel	-1e-10	NMDA	-2e-11
85	84	6.428	0.267	21.167	0.202	Na_dend	100	K_DR	40			K_A_dist	247.7872	Ca_conc	-4.5e+15	CaT	24.34429	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.737715	Ex_channel	-1e-10	NMDA	-2e-11
86	85	-5.22	-8.459	18.292	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.8e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
87	81	27.1	-2.3	0	1.2	Na_dend	100	K_DR	40			K_A_dist	213.9328	Ca_conc	-6.1e+14	CaT	21.26662	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.506647	Ex_channel	-1e-10	NMDA	-2e-11
88	87	16.888	2.075	24.735	0.546	Na_dend	100	K_DR	40			K_A_dist	230.445	Ca_conc	-1.2e+15	CaT	22.76773	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.107091	Ex_channel	-1e-10	NMDA	-2e-11
89	88	16.912	-0.775	23.265	0.5	Na_dend	100	K_DR	40			K_A_dist	246.2701	Ca_conc	-1.4e+15	CaT	24.20637	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.682547	Ex_channel	-1e-10	NMDA	-2e-11
90	87	2.1	-0.4	0	1.2	Na_dend	100	K_DR	40			K_A_dist	215.1086	Ca_conc	-7.8e+15	CaT	21.37351	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.549402	Ex_channel	-1e-10	NMDA	-2e-11
91	90	16.877	20.912	-2.921	0.504	Na_dend	100	K_DR	40			K_A_dist	229.9756	Ca_conc	-1.5e+15	CaT	22.72506	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.090023	Ex_channel	-1e-10	NMDA	-2e-11
92	91	8.223	14.781	-4.346	0.21	Na_dend	100	K_DR	40			K_A_dist	239.5807	Ca_conc	-5.5e+15	CaT	23.59825	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.439299	Ex_channel	-1e-10	NMDA	-2e-11
93	92	6.073	15.187	-5.101	0.202	Na_dend	100	K_DR	40			K_A_dist	249.004	Ca_conc	-5.8e+15	CaT	24.45491	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.781963	Ex_channel	-1e-10	NMDA	-2e-11
94	93	6.027	14.92	-5.632	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
95	90	14.8	-2.3	0	1.1	Na_dend	100	K_DR	40			K_A_dist	223.3463	Ca_conc	-1.2e+15	CaT	22.12239	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.848955	Ex_channel	-1e-10	NMDA	-2e-11
96	95	8.555	14.983	1.601	0.206	Na_dend	100	K_DR	40			K_A_dist	232.8764	Ca_conc	-5.6e+15	CaT	22.98876	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.195505	Ex_channel	-1e-10	NMDA	-2e-11
97	96	9.222	14.651	4.599	0.22	Na_dend	100	K_DR	40			K_A_dist	242.7281	Ca_conc	-5.1e+15	CaT	23.88437	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.55375	Ex_channel	-1e-10	NMDA	-2e-11
98	97	9.079	13.655	5.682	0.208	Na_dend	100	K_DR	40			K_A_dist	252.273	Ca_conc	-5.5e+15	CaT	24.75209	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.900836	Ex_channel	-1e-10	NMDA	-2e-11
99	98	5.344	15.011	6.118	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
100	95	27.7	7.2	-6	1.1	Na_dend	100	K_DR	40			K_A_dist	239.4297	Ca_conc	-6.2e+14	CaT	23.58452	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.433808	Ex_channel	-1e-10	NMDA	-2e-11
101	100	32.34	-2.023	-10.128	1.298	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
102	101	21.16	-22.977	-9.172	1.1	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.6e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
103	102	25.122	-23.205	-7.963	0.622	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.2e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
104	103	19.522	-29.038	-3.201	0.622	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.2e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
105	104	3.717	-35.065	1.528	0.63	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
106	105	-0.809	-34.856	5.467	0.63	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
107	106	-3.752	-29.536	17.469	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.7e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
108	100	3.6	5.3	24	1.1	Na_dend	100	K_DR	40			K_A_dist	253.092	Ca_conc	-7.3e+14	CaT	24.82654	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.930617	Ex_channel	-1e-10	NMDA	-2e-11
109	108	9.797	29.078	35.417	1.142	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-3.7e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
110	109	7.412	38.665	24.846	1.128	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-3.8e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
111	110	19.59	40.821	11.707	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-7.1e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
112	111	36.001	25.336	-11.97	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-2.2e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
113	108	17.4	4.1	-5.9	1.1	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.7e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
114	113	0.7	0.4	-0.1	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.1e+16	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
115	114	3.3	1.6	0	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
116	115	17.643	26.964	10.321	0.618	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.6e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
117	116	19.503	17.757	21.123	0.618	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.6e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
118	117	-3.573	18.075	28.367	0.618	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.6e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
119	118	-2.373	14.004	30.189	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
120	115	17.8	2.6	6	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
121	120	8.183	2.159	-18.798	0.208	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.7e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
122	121	5.781	-0.767	-19.382	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
123	122	14.516	-0.665	-14.71	0.21	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
124	123	4.372	-0.286	-2.236	0.21	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.9e+16	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
125	124	-13.023	-10.251	11.747	0.222	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.4e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
126	125	-14.904	0.387	12.794	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
127	126	-4.94	-11.896	15.225	0.23	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.4e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
128	127	10.796	-8.377	14.499	0.208	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.8e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
129	128	12.113	-4.463	15.067	0.206	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
130	129	10.906	-3.941	15.794	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
131	120	4.277	-6.609	19.849	0.206	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
132	131	1.431	-4.025	20.649	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.7e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
133	132	3.239	-2.241	20.714	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.7e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
134	133	4.708	-2.597	20.468	0.202	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.7e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
135	134	4.942	-4.423	20.134	0.202	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.7e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
136	135	6.26	-6.112	19.315	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
137	136	9.118	-8.222	17.912	0.214	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
138	137	12.425	-15.271	4.959	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
139	114	-1.7	5.1	0	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-6.2e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
140	139	3.535	-16.609	-14.783	0.21	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.2e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
141	140	6.45	-10.247	-18.582	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.4e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
142	141	2.474	-14.645	-15.224	0.22	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
143	142	9.799	-14.948	10.16	0.272	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-3.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
144	143	5.624	-5.249	20.693	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.4e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
145	144	3.293	-5.403	21.258	0.202	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
146	145	3.563	-5.296	21.215	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
147	146	4.199	-4.448	21.208	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
148	147	5.686	-2.518	21.293	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
149	148	3.39	-13.796	13.409	0.316	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-3.2e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
150	149	2.478	-12.117	-17.701	0.226	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
151	150	2.709	-6.724	-20.946	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
152	139	-1.5	4	-6	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
153	152	6.71	28.969	-16.512	0.646	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-9.1e+14	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
154	153	19.69	24.931	-7.488	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
155	152	-5.643	-0.258	-20.859	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
156	155	-5.621	3.581	-20.569	0.202	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
157	156	-1.753	9.594	-19.276	0.202	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
158	157	-0.342	12.441	-17.728	0.202	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
159	158	4.53	16.786	-12.968	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
160	159	7.729	19.856	1.4	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.7e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
161	62	10.9	-5.7	6	0.5	Na_dend	100	K_DR	40			K_A_dist	162.9358	Ca_conc	-2.9e+15	CaT	16.63053	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.65221	Ex_channel	-1e-10	NMDA	-2e-11
162	161	25.718	-11.837	4.442	0.516	Na_dend	100	K_DR	40			K_A_dist	178.6975	Ca_conc	-1.4e+15	CaT	18.06341	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.225364	Ex_channel	-1e-10	NMDA	-2e-11
163	162	27.29	-8.481	2.656	0.518	Na_dend	100	K_DR	40			K_A_dist	194.4828	Ca_conc	-1.3e+15	CaT	19.49844	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.799376	Ex_channel	-1e-10	NMDA	-2e-11
164	163	23.701	-16.57	2.135	0.53	Na_dend	100	K_DR	40			K_A_dist	210.4315	Ca_conc	-1.3e+15	CaT	20.94832	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.379328	Ex_channel	-1e-10	NMDA	-2e-11
165	164	22.991	-16.112	2.767	0.5	Na_dend	100	K_DR	40			K_A_dist	225.9474	Ca_conc	-1.4e+15	CaT	22.35885	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.94354	Ex_channel	-1e-10	NMDA	-2e-11
166	165	22.019	-0.66	16.846	0.634	Na_dend	100	K_DR	40			K_A_dist	241.1999	Ca_conc	-1.1e+15	CaT	23.74545	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.498179	Ex_channel	-1e-10	NMDA	-2e-11
167	166	17.432	5.845	20.04	0.606	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.2e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
168	167	18.249	10.315	17.114	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.2e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
169	168	25.093	6.431	-2.382	0.65	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.2e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
170	169	18.407	7.269	-15.618	0.6	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
171	168	4.449	18.14	-1.416	0.214	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
172	171	3.151	14.56	-10.584	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
173	165	8.6	-7	0	0.5	Na_dend	100	K_DR	40			K_A_dist	232.0462	Ca_conc	-3.6e+15	CaT	22.91329	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.165315	Ex_channel	-1e-10	NMDA	-2e-11
174	173	9.086	1.401	34.848	0.5	Na_dend	100	K_DR	40			K_A_dist	251.8683	Ca_conc	-1.1e+15	CaT	24.7153	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.88612	Ex_channel	-1e-10	NMDA	-2e-11
175	174	10.053	0.676	34.488	0.5	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
176	175	14.961	-0.077	32.664	0.5	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
177	176	10.382	-3.222	6.655	0.21	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-7.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
178	177	9.418	-6.178	5.345	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-8e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
179	178	20.398	8.071	4.602	0.224	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
180	179	19.909	7.731	2.224	0.216	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
181	180	21.393	4.198	-0.826	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
182	178	6.596	-12.203	17.732	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.4e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
183	182	5.776	-13.024	17.358	0.208	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
184	183	8.274	-17.299	11.335	0.21	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
185	184	12.054	-18.474	1.575	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
186	176	12.2	3.5	12	0.5	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-2.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
187	186	6.743	-10.863	-2.319	0.222	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-6.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
188	187	-0.243	-7.937	-9.681	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-8e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
189	186	10.2	8.9	18	0.5	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-1.8e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
190	189	7.253	10.08	-3.81	0.226	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-6.8e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
191	190	4.947	7.82	-8.19	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-8.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
192	191	2.885	17.294	-8.674	0.214	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-4.8e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
193	192	7.49	15.707	-7.975	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
194	193	10.105	14.192	-8.304	0.206	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
195	194	11.161	12.529	-9.338	0.206	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
196	195	6.768	12.993	-12.228	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
197	196	-0.909	13.385	-13.481	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
198	191	10.136	1.437	-16.121	0.204	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
199	198	9.91	2.947	-16.171	0.206	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
200	199	10.753	-2.629	-15.71	0.208	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
201	200	4.781	-10.409	-15.395	0.206	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.1e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
202	201	4.02	-11.346	-14.603	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.3e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
203	189	6.6	-1.4	-12	0.5	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-2.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
204	173	9.84	-14.348	0	0.21	Na_dend	100	K_DR	40			K_A_dist	241.6151	Ca_conc	-5.5e+15	CaT	23.78319	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.513275	Ex_channel	-1e-10	NMDA	-2e-11
205	204	13.519	-10.678	0	0.208	Na_dend	100	K_DR	40			K_A_dist	251.0901	Ca_conc	-5.6e+15	CaT	24.64456	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.857823	Ex_channel	-1e-10	NMDA	-2e-11
206	205	8.103	-15.207	0	0.206	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.6e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
207	206	6.838	-15.567	0	0.2	Na_dend	100	K_DR	40			K_A_dist	255	Ca_conc	-5.9e+15	CaT	25	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	9	Ex_channel	-1e-10	NMDA	-2e-11
208	161	18.798	9.35	4.614	0.538	Na_dend	100	K_DR	40			K_A_dist	174.7586	Ca_conc	-1.7e+15	CaT	17.70532	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.08213	Ex_channel	-1e-10	NMDA	-2e-11
209	208	20.002	5.45	1.386	0.5	Na_dend	100	K_DR	40			K_A_dist	186.1862	Ca_conc	-1.9e+15	CaT	18.7442	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.497679	Ex_channel	-1e-10	NMDA	-2e-11
210	61	0.9	4	0	0.5	Na_dend	100	K_DR	40			K_A_dist	155.0093	Ca_conc	-9.8e+15	CaT	15.90994	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.363976	Ex_channel	-1e-10	NMDA	-2e-11
211	210	-0.517	20.2	27.446	0.542	Na_dend	100	K_DR	40			K_A_dist	173.7545	Ca_conc	-1.1e+15	CaT	17.61405	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.045618	Ex_channel	-1e-10	NMDA	-2e-11
212	211	16.966	11.691	27.665	0.524	Na_dend	100	K_DR	40			K_A_dist	192.7265	Ca_conc	-1.1e+15	CaT	19.33877	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.73551	Ex_channel	-1e-10	NMDA	-2e-11
213	212	17.595	10.327	27.631	0.516	Na_dend	100	K_DR	40			K_A_dist	211.6173	Ca_conc	-1.1e+15	CaT	21.05611	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.422446	Ex_channel	-1e-10	NMDA	-2e-11
214	213	18.814	5.982	27.868	0.518	Na_dend	100	K_DR	40			K_A_dist	230.401	Ca_conc	-1.1e+15	CaT	22.76373	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.105491	Ex_channel	-1e-10	NMDA	-2e-11
215	214	20.142	3.6	27.39	0.5	Na_dend	100	K_DR	40			K_A_dist	249.2048	Ca_conc	-1.2e+15	CaT	24.47317	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.789266	Ex_channel	-1e-10	NMDA	-2e-11
216	210	-5.885	-1.544	33.336	0.51	Na_dend	100	K_DR	40			K_A_dist	173.647	Ca_conc	-1.2e+15	CaT	17.60427	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.041709	Ex_channel	-1e-10	NMDA	-2e-11
217	216	8.853	-8.17	32.075	0.546	Na_dend	100	K_DR	40			K_A_dist	192.4915	Ca_conc	-1.1e+15	CaT	19.31741	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.726962	Ex_channel	-1e-10	NMDA	-2e-11
218	217	18.211	-12.893	26.515	0.526	Na_dend	100	K_DR	40			K_A_dist	211.5513	Ca_conc	-1.1e+15	CaT	21.05012	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	7.420047	Ex_channel	-1e-10	NMDA	-2e-11
219	218	21.186	-12.988	25.635	0.56	Na_dend	100	K_DR	40			K_A_dist	231.1878	Ca_conc	-1e+15	CaT	22.83526	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.134102	Ex_channel	-1e-10	NMDA	-2e-11
220	219	21.835	-16.405	20.439	0.5	Na_dend	100	K_DR	40			K_A_dist	249.9495	Ca_conc	-1.2e+15	CaT	24.54087	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	8.816347	Ex_channel	-1e-10	NMDA	-2e-11
221	35	-16.1	5.6	0	0.5	Na_dend	100	K_DR	40			K_A_dist	126.3171	Ca_conc	-2.3e+15	CaT	13.30156	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.320623	Ex_channel	-1e-10	NMDA	-2e-11
222	221	-30.493	-14.087	6.015	0.526	Na_dend	100	K_DR	40			K_A_dist	145.0853	Ca_conc	-1.1e+15	CaT	15.00776	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.003103	Ex_channel	-1e-10	NMDA	-2e-11
223	222	-25.897	-10.015	18.341	0.556	Na_dend	100	K_DR	40			K_A_dist	163.3876	Ca_conc	-1.1e+15	CaT	16.6716	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.66864	Ex_channel	-1e-10	NMDA	-2e-11
224	223	-9.21	-10.798	29.644	0.5	Na_dend	100	K_DR	40			K_A_dist	181.464	Ca_conc	-1.2e+15	CaT	18.31491	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.325964	Ex_channel	-1e-10	NMDA	-2e-11
225	221	-4.6	0.4	6	0.5	Na_dend	100	K_DR	40			K_A_dist	130.4812	Ca_conc	-5.3e+15	CaT	13.68011	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.472043	Ex_channel	-1e-10	NMDA	-2e-11
226	225	-28.645	10.026	10.114	0.508	Na_dend	100	K_DR	40			K_A_dist	148.0756	Ca_conc	-1.2e+15	CaT	15.2796	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.11184	Ex_channel	-1e-10	NMDA	-2e-11
227	226	-24.479	18.33	10.108	0.514	Na_dend	100	K_DR	40			K_A_dist	165.7902	Ca_conc	-1.2e+15	CaT	16.89002	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.756008	Ex_channel	-1e-10	NMDA	-2e-11
228	227	-15.176	26.144	9.778	0.5	Na_dend	100	K_DR	40			K_A_dist	183.2646	Ca_conc	-1.3e+15	CaT	18.4786	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	6.391439	Ex_channel	-1e-10	NMDA	-2e-11
229	225	-23.706	0.333	11.595	0.514	Na_dend	100	K_DR	40			K_A_dist	144.9967	Ca_conc	-1.5e+15	CaT	14.9997	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.99988	Ex_channel	-1e-10	NMDA	-2e-11
230	229	-22.894	0.067	12.405	0.5	Na_dend	100	K_DR	40			K_A_dist	159.3181	Ca_conc	-1.5e+15	CaT	16.30165	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.520658	Ex_channel	-1e-10	NMDA	-2e-11
231	23	0.3	-13.5	6	0.5	Na_dend	100	K_DR	40	K_A_prox	88.0299			Ca_conc	-2.7e+15	CaT	9.8209	CaL	7.144265	CaN	20	CaR	20	K_M	30	K_C	14.28853			H_CA1pyr_prox	2.92836			Ex_channel	-1e-10	NMDA	-2e-11
232	231	11.592	-27.034	-0.099	0.528	Na_dend	100	K_DR	40			K_A_dist	104.208	Ca_conc	-1.3e+15	CaT	11.29163	CaL	3.222312	CaN	20	CaR	20	K_M	30	K_C	6.444624					H_CA1pyr_dist	3.516653	Ex_channel	-1e-10	NMDA	-2e-11
233	232	14.593	-24.031	-7.213	0.514	Na_dend	100	K_DR	40			K_A_dist	120.1719	Ca_conc	-1.3e+15	CaT	12.7429	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.09716	Ex_channel	-1e-10	NMDA	-2e-11
234	233	15.341	-21.441	-13.014	0.526	Na_dend	100	K_DR	40			K_A_dist	136.3425	Ca_conc	-1.3e+15	CaT	14.21296	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.685183	Ex_channel	-1e-10	NMDA	-2e-11
235	234	14.992	-19.211	-16.121	0.52	Na_dend	100	K_DR	40			K_A_dist	152.4126	Ca_conc	-1.3e+15	CaT	15.67387	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.269549	Ex_channel	-1e-10	NMDA	-2e-11
236	235	11.782	-19.383	-17.553	0.5	Na_dend	100	K_DR	40			K_A_dist	168.1874	Ca_conc	-1.4e+15	CaT	17.10794	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.843178	Ex_channel	-1e-10	NMDA	-2e-11
237	231	-0.3	-5.1	0	0.5	Na_dend	100	K_DR	40			K_A_dist	90.83976	Ca_conc	-7.8e+15	CaT	10.07634	CaL	6.463089	CaN	20	CaR	20	K_M	30	K_C	12.92618					H_CA1pyr_dist	3.030537	Ex_channel	-1e-10	NMDA	-2e-11
238	237	10.49	-24.681	-19.173	0.532	Na_dend	100	K_DR	40			K_A_dist	108.9714	Ca_conc	-1.1e+15	CaT	11.72467	CaL	2.067545	CaN	20	CaR	20	K_M	30	K_C	4.135091					H_CA1pyr_dist	3.689868	Ex_channel	-1e-10	NMDA	-2e-11
239	238	-3.429	-19.127	-26.676	0.528	Na_dend	100	K_DR	40			K_A_dist	127.1231	Ca_conc	-1.1e+15	CaT	13.37483	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.349932	Ex_channel	-1e-10	NMDA	-2e-11
240	239	-7.978	-14.726	-27.76	0.516	Na_dend	100	K_DR	40			K_A_dist	144.9547	Ca_conc	-1.2e+15	CaT	14.99588	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.998352	Ex_channel	-1e-10	NMDA	-2e-11
241	240	8.517	-12.466	-28.391	0.5	Na_dend	100	K_DR	40			K_A_dist	162.6403	Ca_conc	-1.2e+15	CaT	16.60366	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.641466	Ex_channel	-1e-10	NMDA	-2e-11
242	237	-11.646	-32.625	-4.515	0.538	Na_dend	100	K_DR	40			K_A_dist	110.0536	Ca_conc	-1.1e+15	CaT	11.82306	CaL	1.805184	CaN	20	CaR	20	K_M	30	K_C	3.610368					H_CA1pyr_dist	3.729222	Ex_channel	-1e-10	NMDA	-2e-11
243	242	-3.489	-35.222	-5.866	0.552	Na_dend	100	K_DR	40			K_A_dist	129.7861	Ca_conc	-1e+15	CaT	13.61692	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.446766	Ex_channel	-1e-10	NMDA	-2e-11
244	243	-24.665	-19.953	-7.619	0.5	Na_dend	100	K_DR	40			K_A_dist	147.731	Ca_conc	-1.2e+15	CaT	15.24827	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.09931	Ex_channel	-1e-10	NMDA	-2e-11
245	12	-0.7	5.9	0	0.5	Na_dend	100	K_DR	40	K_A_prox	62.88922			Ca_conc	-6.7e+15	CaT	7.535384	CaL	13.23898	CaN	20	CaR	20	K_M	30	K_C	26.47795			H_CA1pyr_prox	2.014153			Ex_channel	-1e-10	NMDA	-2e-11
246	245	21.134	24.985	10.366	0.542	Na_dend	100	K_DR	40	K_A_prox	81.76913			Ca_conc	-1.1e+15	CaT	9.251739	CaL	8.66203	CaN	20	CaR	20	K_M	30	K_C	17.32406			H_CA1pyr_prox	2.700696			Ex_channel	-1e-10	NMDA	-2e-11
247	246	16.679	22.164	19.32	0.534	Na_dend	100	K_DR	40			K_A_dist	100.3612	Ca_conc	-1.1e+15	CaT	10.94193	CaL	4.154861	CaN	20	CaR	20	K_M	30	K_C	8.309723					H_CA1pyr_dist	3.376771	Ex_channel	-1e-10	NMDA	-2e-11
248	247	21.365	15.322	21.492	0.51	Na_dend	100	K_DR	40			K_A_dist	119.038	Ca_conc	-1.2e+15	CaT	12.63982	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.055927	Ex_channel	-1e-10	NMDA	-2e-11
249	248	21.789	9.075	24.118	0.512	Na_dend	100	K_DR	40			K_A_dist	137.5983	Ca_conc	-1.2e+15	CaT	14.32712	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.730847	Ex_channel	-1e-10	NMDA	-2e-11
250	249	19.633	6.154	26.704	0.5	Na_dend	100	K_DR	40			K_A_dist	156.1393	Ca_conc	-1.2e+15	CaT	16.01267	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.405067	Ex_channel	-1e-10	NMDA	-2e-11
251	245	12.473	-13.212	24.864	0.522	Na_dend	100	K_DR	40	K_A_prox	79.82664			Ca_conc	-1.2e+15	CaT	9.075149	CaL	9.132936	CaN	20	CaR	20	K_M	30	K_C	18.26587			H_CA1pyr_prox	2.63006			Ex_channel	-1e-10	NMDA	-2e-11
252	251	11.77	-12.721	25.22	0.514	Na_dend	100	K_DR	40			K_A_dist	96.65705	Ca_conc	-1.3e+15	CaT	10.60519	CaL	5.052837	CaN	20	CaR	20	K_M	30	K_C	10.10567					H_CA1pyr_dist	3.242074	Ex_channel	-1e-10	NMDA	-2e-11
253	252	21.471	-15.965	14.946	0.52	Na_dend	100	K_DR	40			K_A_dist	113.5132	Ca_conc	-1.3e+15	CaT	12.13756	CaL	0.966507	CaN	20	CaR	20	K_M	30	K_C	1.933013					H_CA1pyr_dist	3.855024	Ex_channel	-1e-10	NMDA	-2e-11
254	253	25.454	-17.564	4.229	0.542	Na_dend	100	K_DR	40			K_A_dist	130.6806	Ca_conc	-1.2e+15	CaT	13.69824	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.479295	Ex_channel	-1e-10	NMDA	-2e-11
255	254	23.832	-16.038	-9.259	0.5	Na_dend	100	K_DR	40			K_A_dist	147.2803	Ca_conc	-1.3e+15	CaT	15.2073	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.082921	Ex_channel	-1e-10	NMDA	-2e-11
256	11	1.5	-12.8	-18	0.5	Na_dend	100	K_DR	40	K_A_prox	70.8559			Ca_conc	-1.8e+15	CaT	8.259627	CaL	11.30766	CaN	20	CaR	20	K_M	30	K_C	22.61532			H_CA1pyr_prox	2.303851			Ex_channel	-1e-10	NMDA	-2e-11
257	256	-1.158	-10.853	-27.289	0.512	Na_dend	100	K_DR	40	K_A_prox	87.02083			Ca_conc	-1.3e+15	CaT	9.729166	CaL	7.38889	CaN	20	CaR	20	K_M	30	K_C	14.77778			H_CA1pyr_prox	2.891667			Ex_channel	-1e-10	NMDA	-2e-11
258	257	8.788	-7.196	-26.977	0.506	Na_dend	100	K_DR	40			K_A_dist	103.1197	Ca_conc	-1.4e+15	CaT	11.1927	CaL	3.486139	CaN	20	CaR	20	K_M	30	K_C	6.972277					H_CA1pyr_dist	3.477079	Ex_channel	-1e-10	NMDA	-2e-11
259	258	6.02	-9.822	-26.897	0.506	Na_dend	100	K_DR	40			K_A_dist	119.2128	Ca_conc	-1.4e+15	CaT	12.65571	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.062284	Ex_channel	-1e-10	NMDA	-2e-11
260	259	-4.389	-10.665	-26.929	0.51	Na_dend	100	K_DR	40			K_A_dist	135.3249	Ca_conc	-1.3e+15	CaT	14.12044	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.648177	Ex_channel	-1e-10	NMDA	-2e-11
261	260	6.239	-15.264	-23.908	0.5	Na_dend	100	K_DR	40			K_A_dist	151.2986	Ca_conc	-1.4e+15	CaT	15.5726	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	5.229041	Ex_channel	-1e-10	NMDA	-2e-11
262	256	20.204	-24.163	-16.151	0.524	Na_dend	100	K_DR	40			K_A_dist	90.32393	Ca_conc	-1.1e+15	CaT	10.02945	CaL	6.588137	CaN	20	CaR	20	K_M	30	K_C	13.17627					H_CA1pyr_dist	3.011779	Ex_channel	-1e-10	NMDA	-2e-11
263	262	28.714	-20.029	-4.638	0.522	Na_dend	100	K_DR	40			K_A_dist	109.7473	Ca_conc	-1.1e+15	CaT	11.79521	CaL	1.87944	CaN	20	CaR	20	K_M	30	K_C	3.75888					H_CA1pyr_dist	3.718084	Ex_channel	-1e-10	NMDA	-2e-11
264	263	30.482	-14.908	8.789	0.5	Na_dend	100	K_DR	40			K_A_dist	129.0259	Ca_conc	-1.1e+15	CaT	13.54781	CaL	0	CaN	20	CaR	20	K_M	30							H_CA1pyr_dist	4.419125	Ex_channel	-1e-10	NMDA	-2e-11
265	1	-0.4	0	0	0.7	Na_dend	100	K_DR	40	K_A_prox	35.22			Ca_conc	-7.1e+16	CaT	0	CaL	19.94667	CaN	20	CaR	0	K_M	50	K_C	39.89333	K_AHP	30	H_CA1pyr_prox	1.008			Ex_channel	-1e-10	NMDA	-2e-11
266	265	-26.4	12.6	18	0.7	Na_dend	100	K_DR	40	K_A_prox	54.11088			Ca_conc	-8.3e+14	CaT	0	CaL	15.36706	CaN	20	CaR	0	K_M	50	K_C	30.73412	K_AHP	30	H_CA1pyr_prox	1.694941			Ex_channel	-1e-10	NMDA	-2e-11
267	266	-4	6.5	-24	0.7	Na_dend	100	K_DR	40	K_A_prox	67.96226			Ca_conc	-1.1e+15	CaT	0	CaL	12.00915	CaN	20	CaR	0	K_M	50	K_C	24.0183	K_AHP	30	H_CA1pyr_prox	2.198627			Ex_channel	-1e-10	NMDA	-2e-11
268	267	-7.6	13.3	-6	0.7	Na_dend	100	K_DR	40	K_A_prox	77.01055			Ca_conc	-1.7e+15	CaT	0	CaL	9.815625	CaN	20	CaR	0	K_M	50	K_C	19.63125	K_AHP	30	H_CA1pyr_prox	2.527656			Ex_channel	-1e-10	NMDA	-2e-11
269	268	-5.595	20.407	-10.072	0.36	Na_dend	100	K_DR	40	K_A_prox	89.89975			Ca_conc	-2.4e+15	CaT	0	CaL	6.69097	CaN	20	CaR	0	K_M	50	K_C	13.38194	K_AHP	30	H_CA1pyr_prox	2.996354			Ex_channel	-1e-10	NMDA	-2e-11
270	269	-21.717	11.249	-9.97	0.304	Na_dend	100	K_DR	40			K_A_dist	104.4261	Ca_conc	-2.5e+15	CaT	0	CaL	3.169433	CaN	20	CaR	0	K_M	50	K_C	6.338867	K_AHP	30			H_CA1pyr_dist	3.524585	Ex_channel	-1e-10	NMDA	-2e-11
271	270	-22.688	9.044	-9.958	0.3	Na_dend	100	K_DR	40			K_A_dist	118.933	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.052108	Ex_channel	-1e-10	NMDA	-2e-11
272	271	-16.348	15.425	-1.085	0.326	Na_dend	100	K_DR	40			K_A_dist	131.3094	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.502159	Ex_channel	-1e-10	NMDA	-2e-11
273	272	-20.064	8.175	10.155	0.306	Na_dend	100	K_DR	40			K_A_dist	144.4694	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.980706	Ex_channel	-1e-10	NMDA	-2e-11
274	273	-18.188	2.37	13.95	0.288	Na_dend	100	K_DR	40			K_A_dist	157.1436	Ca_conc	-3e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.441585	Ex_channel	-1e-10	NMDA	-2e-11
275	274	-14.6	2.43	12.98	0.2	Na_dend	100	K_DR	40			K_A_dist	167.971	Ca_conc	-5.1e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.835308	Ex_channel	-1e-10	NMDA	-2e-11
276	271	-19.036	-3.142	-12.787	0.306	Na_dend	100	K_DR	40			K_A_dist	131.6634	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.515033	Ex_channel	-1e-10	NMDA	-2e-11
277	276	-16.35	-0.758	-16.688	0.302	Na_dend	100	K_DR	40			K_A_dist	144.5196	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.982531	Ex_channel	-1e-10	NMDA	-2e-11
278	277	-11.619	-6.114	-18.194	0.314	Na_dend	100	K_DR	40			K_A_dist	156.8598	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.431264	Ex_channel	-1e-10	NMDA	-2e-11
279	278	-11.631	-0.782	-18.937	0.318	Na_dend	100	K_DR	40			K_A_dist	169.0903	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.876012	Ex_channel	-1e-10	NMDA	-2e-11
280	279	-9.564	7.196	-17.394	0.2	Na_dend	100	K_DR	40			K_A_dist	180.7031	Ca_conc	-4.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.298294	Ex_channel	-1e-10	NMDA	-2e-11
281	268	-13.6	7.7	6	0.3	Na_dend	100	K_DR	40	K_A_prox	86.21792			Ca_conc	-4e+15	CaT	0	CaL	7.583535	CaN	20	CaR	0	K_M	50	K_C	15.16707	K_AHP	30	H_CA1pyr_prox	2.86247			Ex_channel	-1e-10	NMDA	-2e-11
282	281	-18.128	8.1	12.485	0.31	Na_dend	100	K_DR	40			K_A_dist	99.11785	Ca_conc	-2.8e+15	CaT	0	CaL	4.45628	CaN	20	CaR	0	K_M	50	K_C	8.91256	K_AHP	30			H_CA1pyr_dist	3.331558	Ex_channel	-1e-10	NMDA	-2e-11
283	282	-19.436	2.553	13.822	0.302	Na_dend	100	K_DR	40			K_A_dist	112.3101	Ca_conc	-2.8e+15	CaT	0	CaL	1.258159	CaN	20	CaR	0	K_M	50	K_C	2.516317	K_AHP	30			H_CA1pyr_dist	3.811276	Ex_channel	-1e-10	NMDA	-2e-11
284	283	-17.909	4.726	15.067	0.304	Na_dend	100	K_DR	40			K_A_dist	125.4421	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.288804	Ex_channel	-1e-10	NMDA	-2e-11
285	284	-16.376	6.181	16.207	0.304	Na_dend	100	K_DR	40			K_A_dist	138.5622	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.765897	Ex_channel	-1e-10	NMDA	-2e-11
286	285	-14.444	8.245	17.2	0.304	Na_dend	100	K_DR	40			K_A_dist	151.7214	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.244415	Ex_channel	-1e-10	NMDA	-2e-11
287	286	-9.136	9.91	16.399	0.266	Na_dend	100	K_DR	40			K_A_dist	163.3965	Ca_conc	-3.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.668963	Ex_channel	-1e-10	NMDA	-2e-11
288	287	-8.071	5.685	16.82	0.2	Na_dend	100	K_DR	40			K_A_dist	174.1232	Ca_conc	-5.1e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.059026	Ex_channel	-1e-10	NMDA	-2e-11
289	281	-10.538	2.686	20.762	0.304	Na_dend	100	K_DR	40			K_A_dist	99.10864	Ca_conc	-2.8e+15	CaT	0	CaL	4.458512	CaN	20	CaR	0	K_M	50	K_C	8.917024	K_AHP	30			H_CA1pyr_dist	3.331223	Ex_channel	-1e-10	NMDA	-2e-11
290	289	-12.074	0.563	19.8	0.308	Na_dend	100	K_DR	40			K_A_dist	111.8674	Ca_conc	-2.8e+15	CaT	0	CaL	1.365471	CaN	20	CaR	0	K_M	50	K_C	2.730941	K_AHP	30			H_CA1pyr_dist	3.795179	Ex_channel	-1e-10	NMDA	-2e-11
291	290	-17.789	-0.303	15.312	0.304	Na_dend	100	K_DR	40			K_A_dist	124.7778	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.264646	Ex_channel	-1e-10	NMDA	-2e-11
292	291	-20.528	0.709	11.11	0.306	Na_dend	100	K_DR	40			K_A_dist	137.6216	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.731694	Ex_channel	-1e-10	NMDA	-2e-11
293	292	-22.568	1.845	4.316	0.31	Na_dend	100	K_DR	40			K_A_dist	150.2996	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.192713	Ex_channel	-1e-10	NMDA	-2e-11
294	293	-20.227	2.189	-3.441	0.276	Na_dend	100	K_DR	40			K_A_dist	161.6483	Ca_conc	-3.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.605394	Ex_channel	-1e-10	NMDA	-2e-11
295	294	-14.076	8.911	-7.859	0.2	Na_dend	100	K_DR	40			K_A_dist	171.7794	Ca_conc	-5.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.973798	Ex_channel	-1e-10	NMDA	-2e-11
296	267	-18.544	10.204	4.048	0.66	Na_dend	100	K_DR	40	K_A_prox	79.81457			Ca_conc	-1.4e+15	CaT	0	CaL	9.135862	CaN	20	CaR	0	K_M	50	K_C	18.27172	K_AHP	30	H_CA1pyr_prox	2.629621			Ex_channel	-1e-10	NMDA	-2e-11
297	296	-12.956	8.396	1.952	0.3	Na_dend	100	K_DR	40	K_A_prox	88.37341			Ca_conc	-4.3e+15	CaT	0	CaL	7.060992	CaN	20	CaR	0	K_M	50	K_C	14.12198	K_AHP	30	H_CA1pyr_prox	2.940851			Ex_channel	-1e-10	NMDA	-2e-11
298	297	-18.43	10.236	-2.679	0.338	Na_dend	100	K_DR	40			K_A_dist	100.0616	Ca_conc	-2.8e+15	CaT	0	CaL	4.227485	CaN	20	CaR	0	K_M	50	K_C	8.454971	K_AHP	30			H_CA1pyr_dist	3.365877	Ex_channel	-1e-10	NMDA	-2e-11
299	298	-19.19	12.459	-2.453	0.312	Na_dend	100	K_DR	40			K_A_dist	112.7176	Ca_conc	-2.8e+15	CaT	0	CaL	1.159371	CaN	20	CaR	0	K_M	50	K_C	2.318741	K_AHP	30			H_CA1pyr_dist	3.826094	Ex_channel	-1e-10	NMDA	-2e-11
300	299	-16.907	15.792	-3.128	0.308	Na_dend	100	K_DR	40			K_A_dist	125.5577	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.293007	Ex_channel	-1e-10	NMDA	-2e-11
301	300	-19.491	11.861	-4.456	0.308	Na_dend	100	K_DR	40			K_A_dist	138.3437	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.757954	Ex_channel	-1e-10	NMDA	-2e-11
302	301	-7.082	16.452	-5.284	0.2	Na_dend	100	K_DR	40			K_A_dist	148.6148	Ca_conc	-5.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.131447	Ex_channel	-1e-10	NMDA	-2e-11
303	297	-20.035	9.496	-3.148	0.306	Na_dend	100	K_DR	40			K_A_dist	100.69	Ca_conc	-2.9e+15	CaT	0	CaL	4.075144	CaN	20	CaR	0	K_M	50	K_C	8.150288	K_AHP	30			H_CA1pyr_dist	3.388728	Ex_channel	-1e-10	NMDA	-2e-11
304	303	-19.558	9.84	-2.841	0.31	Na_dend	100	K_DR	40			K_A_dist	112.8326	Ca_conc	-2.9e+15	CaT	0	CaL	1.131488	CaN	20	CaR	0	K_M	50	K_C	2.262976	K_AHP	30			H_CA1pyr_dist	3.830277	Ex_channel	-1e-10	NMDA	-2e-11
305	304	-18.756	10.814	-3.236	0.314	Na_dend	100	K_DR	40			K_A_dist	124.8725	Ca_conc	-2.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.26809	Ex_channel	-1e-10	NMDA	-2e-11
306	305	-19.828	8.487	-4.112	0.312	Na_dend	100	K_DR	40			K_A_dist	136.9486	Ca_conc	-2.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.70722	Ex_channel	-1e-10	NMDA	-2e-11
307	306	-18.668	1.885	-4.985	0.272	Na_dend	100	K_DR	40			K_A_dist	147.6262	Ca_conc	-3.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.095497	Ex_channel	-1e-10	NMDA	-2e-11
308	307	-11.555	-11.722	-5.678	0.2	Na_dend	100	K_DR	40			K_A_dist	157.2025	Ca_conc	-5.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.443729	Ex_channel	-1e-10	NMDA	-2e-11
309	266	-21.4	-15	-6	0.3	Na_dend	100	K_DR	40	K_A_prox	68.85827			Ca_conc	-2.5e+15	CaT	0	CaL	11.79194	CaN	20	CaR	0	K_M	50	K_C	23.58387	K_AHP	30	H_CA1pyr_prox	2.23121			Ex_channel	-1e-10	NMDA	-2e-11
310	309	-15.693	-11.14	14.326	0.304	Na_dend	100	K_DR	40	K_A_prox	82.05373			Ca_conc	-2.7e+15	CaT	0	CaL	8.593036	CaN	20	CaR	0	K_M	50	K_C	17.18607	K_AHP	30	H_CA1pyr_prox	2.711045			Ex_channel	-1e-10	NMDA	-2e-11
311	310	-13.88	-11.631	15.567	0.302	Na_dend	100	K_DR	40			K_A_dist	95.18786	Ca_conc	-2.8e+15	CaT	0	CaL	5.409003	CaN	20	CaR	0	K_M	50	K_C	10.81801	K_AHP	30			H_CA1pyr_dist	3.18865	Ex_channel	-1e-10	NMDA	-2e-11
312	311	-11.901	-13.448	16.033	0.306	Na_dend	100	K_DR	40			K_A_dist	108.4284	Ca_conc	-2.7e+15	CaT	0	CaL	2.199185	CaN	20	CaR	0	K_M	50	K_C	4.398371	K_AHP	30			H_CA1pyr_dist	3.670122	Ex_channel	-1e-10	NMDA	-2e-11
313	312	-14.626	-9.955	16.75	0.314	Na_dend	100	K_DR	40			K_A_dist	121.8283	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.157394	Ex_channel	-1e-10	NMDA	-2e-11
314	313	-15.986	-7.179	16.895	0.314	Na_dend	100	K_DR	40			K_A_dist	135.2164	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.644233	Ex_channel	-1e-10	NMDA	-2e-11
315	314	-17.214	-1.347	16.429	0.3	Na_dend	100	K_DR	40			K_A_dist	148.325	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.120908	Ex_channel	-1e-10	NMDA	-2e-11
316	309	-18.31	0.2	-8.655	0.322	Na_dend	100	K_DR	40	K_A_prox	79.9977			Ca_conc	-3.1e+15	CaT	0	CaL	9.091466	CaN	20	CaR	0	K_M	50	K_C	18.18293	K_AHP	30	H_CA1pyr_prox	2.63628			Ex_channel	-1e-10	NMDA	-2e-11
317	316	-19.09	2.4	-9.345	0.3	Na_dend	100	K_DR	40			K_A_dist	91.76201	Ca_conc	-3.1e+15	CaT	0	CaL	6.239513	CaN	20	CaR	0	K_M	50	K_C	12.47903	K_AHP	30			H_CA1pyr_dist	3.064073	Ex_channel	-1e-10	NMDA	-2e-11
318	317	-15.147	-0.3	-19.494	0.306	Na_dend	100	K_DR	40			K_A_dist	105.3409	Ca_conc	-2.6e+15	CaT	0	CaL	2.947671	CaN	20	CaR	0	K_M	50	K_C	5.895341	K_AHP	30			H_CA1pyr_dist	3.557849	Ex_channel	-1e-10	NMDA	-2e-11
319	318	-11.031	3.211	-22.219	0.302	Na_dend	100	K_DR	40			K_A_dist	119.0983	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.05812	Ex_channel	-1e-10	NMDA	-2e-11
320	319	-10.988	2.252	-22.378	0.3	Na_dend	100	K_DR	40			K_A_dist	132.8657	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.558753	Ex_channel	-1e-10	NMDA	-2e-11
321	320	-13.437	3.609	-20.512	0.304	Na_dend	100	K_DR	40			K_A_dist	146.4977	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.054462	Ex_channel	-1e-10	NMDA	-2e-11
322	321	-15.758	-2.672	-11.707	0.252	Na_dend	100	K_DR	40			K_A_dist	157.3942	Ca_conc	-4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.450699	Ex_channel	-1e-10	NMDA	-2e-11
323	322	-14.239	-11.2	0.31	0.2	Na_dend	100	K_DR	40			K_A_dist	167.3595	Ca_conc	-5.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.813072	Ex_channel	-1e-10	NMDA	-2e-11
324	317	-21.654	4.245	5.807	0.314	Na_dend	100	K_DR	40			K_A_dist	104.3116	Ca_conc	-2.8e+15	CaT	0	CaL	3.197184	CaN	20	CaR	0	K_M	50	K_C	6.394368	K_AHP	30			H_CA1pyr_dist	3.520422	Ex_channel	-1e-10	NMDA	-2e-11
325	324	-19.928	8.243	-11.297	0.312	Na_dend	100	K_DR	40			K_A_dist	117.7015	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.007329	Ex_channel	-1e-10	NMDA	-2e-11
326	325	-15.31	7.462	-16.842	0.302	Na_dend	100	K_DR	40			K_A_dist	130.8755	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.486382	Ex_channel	-1e-10	NMDA	-2e-11
327	326	-10.908	-4.35	0.5	0.2	Na_dend	100	K_DR	40			K_A_dist	137.333	Ca_conc	-8.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.7212	Ex_channel	-1e-10	NMDA	-2e-11
328	326	-12.497	3.282	-16.749	0.236	Na_dend	100	K_DR	40			K_A_dist	142.51	Ca_conc	-4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.909455	Ex_channel	-1e-10	NMDA	-2e-11
329	328	-10.899	-0.755	-16.213	0.2	Na_dend	100	K_DR	40			K_A_dist	153.2627	Ca_conc	-5.1e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.300463	Ex_channel	-1e-10	NMDA	-2e-11
330	329	-10.112	-0.977	-16.706	0.2	Na_dend	100	K_DR	40			K_A_dist	164.0166	Ca_conc	-5.1e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.691512	Ex_channel	-1e-10	NMDA	-2e-11
331	265	-20.663	-5	-13.698	0.716	Na_dend	100	K_DR	40	K_A_prox	49.12962			Ca_conc	-1.1e+15	CaT	0	CaL	16.57464	CaN	20	CaR	0	K_M	50	K_C	33.14928	K_AHP	30	H_CA1pyr_prox	1.513804			Ex_channel	-1e-10	NMDA	-2e-11
332	331	-23.937	-1.9	-4.302	0.3	Na_dend	100	K_DR	40	K_A_prox	62.54665			Ca_conc	-2.7e+15	CaT	0	CaL	13.32202	CaN	20	CaR	0	K_M	50	K_C	26.64405	K_AHP	30	H_CA1pyr_prox	2.001696			Ex_channel	-1e-10	NMDA	-2e-11
333	332	-13.8	1.4	6	0.3	Na_dend	100	K_DR	40	K_A_prox	70.85875			Ca_conc	-4.4e+15	CaT	0	CaL	11.30697	CaN	20	CaR	0	K_M	50	K_C	22.61394	K_AHP	30	H_CA1pyr_prox	2.303955			Ex_channel	-1e-10	NMDA	-2e-11
334	333	-18.289	-2.806	3.354	0.346	Na_dend	100	K_DR	40	K_A_prox	81.20125			Ca_conc	-3.1e+15	CaT	0	CaL	8.799698	CaN	20	CaR	0	K_M	50	K_C	17.5994	K_AHP	30	H_CA1pyr_prox	2.680045			Ex_channel	-1e-10	NMDA	-2e-11
335	334	-15.311	-8.394	2.646	0.3	Na_dend	100	K_DR	40			K_A_dist	90.91443	Ca_conc	-3.8e+15	CaT	0	CaL	6.444987	CaN	20	CaR	0	K_M	50	K_C	12.88997	K_AHP	30			H_CA1pyr_dist	3.033252	Ex_channel	-1e-10	NMDA	-2e-11
336	335	-20.003	-3.038	4.09	0.322	Na_dend	100	K_DR	40			K_A_dist	102.2673	Ca_conc	-3e+15	CaT	0	CaL	3.692768	CaN	20	CaR	0	K_M	50	K_C	7.385536	K_AHP	30			H_CA1pyr_dist	3.446085	Ex_channel	-1e-10	NMDA	-2e-11
337	336	-19.729	-1.402	4.113	0.31	Na_dend	100	K_DR	40			K_A_dist	113.3784	Ca_conc	-3.2e+15	CaT	0	CaL	0.999184	CaN	20	CaR	0	K_M	50	K_C	1.998368	K_AHP	30			H_CA1pyr_dist	3.850122	Ex_channel	-1e-10	NMDA	-2e-11
338	337	-15.768	1.54	3.797	0.2	Na_dend	100	K_DR	40			K_A_dist	122.3388	Ca_conc	-6.1e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.175956	Ex_channel	-1e-10	NMDA	-2e-11
339	335	-7.806	-21.572	10.581	0.328	Na_dend	100	K_DR	40			K_A_dist	104.8093	Ca_conc	-2.4e+15	CaT	0	CaL	3.076525	CaN	20	CaR	0	K_M	50	K_C	6.153051	K_AHP	30			H_CA1pyr_dist	3.538521	Ex_channel	-1e-10	NMDA	-2e-11
340	339	-12.087	-13.495	16.731	0.31	Na_dend	100	K_DR	40			K_A_dist	118.3726	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.03173	Ex_channel	-1e-10	NMDA	-2e-11
341	340	-3.615	-8.457	23.232	0.318	Na_dend	100	K_DR	40			K_A_dist	132.115	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.531456	Ex_channel	-1e-10	NMDA	-2e-11
342	341	-1.47	-2.118	24.224	0.3	Na_dend	100	K_DR	40			K_A_dist	145.5135	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.018672	Ex_channel	-1e-10	NMDA	-2e-11
343	342	-2.137	-2.678	24.151	0.3	Na_dend	100	K_DR	40			K_A_dist	158.9295	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.506528	Ex_channel	-1e-10	NMDA	-2e-11
344	343	-4.817	-4.5	23.461	0.302	Na_dend	100	K_DR	40			K_A_dist	172.3327	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.993918	Ex_channel	-1e-10	NMDA	-2e-11
345	344	-15.468	-8.48	15.62	0.3	Na_dend	100	K_DR	40			K_A_dist	185.2917	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.465152	Ex_channel	-1e-10	NMDA	-2e-11
346	333	-10.4	1.6	6	0.3	Na_dend	100	K_DR	40	K_A_prox	77.52079			Ca_conc	-5.5e+15	CaT	0	CaL	9.691929	CaN	20	CaR	0	K_M	50	K_C	19.38386	K_AHP	30	H_CA1pyr_prox	2.546211			Ex_channel	-1e-10	NMDA	-2e-11
347	346	-24.243	-0.015	-10.574	0.328	Na_dend	100	K_DR	40			K_A_dist	92.06757	Ca_conc	-2.3e+15	CaT	0	CaL	6.165437	CaN	20	CaR	0	K_M	50	K_C	12.33087	K_AHP	30			H_CA1pyr_dist	3.075184	Ex_channel	-1e-10	NMDA	-2e-11
348	347	-14.917	-2.404	-20.985	0.304	Na_dend	100	K_DR	40			K_A_dist	106.2898	Ca_conc	-2.5e+15	CaT	0	CaL	2.717627	CaN	20	CaR	0	K_M	50	K_C	5.435253	K_AHP	30			H_CA1pyr_dist	3.592356	Ex_channel	-1e-10	NMDA	-2e-11
349	348	-9.882	-7.162	-22.869	0.304	Na_dend	100	K_DR	40			K_A_dist	120.5468	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.110792	Ex_channel	-1e-10	NMDA	-2e-11
350	349	-11.19	-2.36	-23.229	0.302	Na_dend	100	K_DR	40			K_A_dist	134.7871	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.628623	Ex_channel	-1e-10	NMDA	-2e-11
351	350	-10.029	-1.997	-23.84	0.304	Na_dend	100	K_DR	40			K_A_dist	149.0545	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.147435	Ex_channel	-1e-10	NMDA	-2e-11
352	351	-6.139	-5.262	-24.503	0.3	Na_dend	100	K_DR	40			K_A_dist	163.2459	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.663486	Ex_channel	-1e-10	NMDA	-2e-11
353	346	-22.212	2.881	4.827	0.306	Na_dend	100	K_DR	40			K_A_dist	90.12256	Ca_conc	-2.9e+15	CaT	0	CaL	6.636956	CaN	20	CaR	0	K_M	50	K_C	13.27391	K_AHP	30			H_CA1pyr_dist	3.004457	Ex_channel	-1e-10	NMDA	-2e-11
354	353	-21.256	8.836	-3.379	0.32	Na_dend	100	K_DR	40			K_A_dist	102.9189	Ca_conc	-2.7e+15	CaT	0	CaL	3.534813	CaN	20	CaR	0	K_M	50	K_C	7.069627	K_AHP	30			H_CA1pyr_dist	3.469778	Ex_channel	-1e-10	NMDA	-2e-11
355	354	-15.661	14.458	-8.488	0.308	Na_dend	100	K_DR	40			K_A_dist	115.5371	Ca_conc	-2.8e+15	CaT	0	CaL	0.475847	CaN	20	CaR	0	K_M	50	K_C	0.951693	K_AHP	30			H_CA1pyr_dist	3.928623	Ex_channel	-1e-10	NMDA	-2e-11
356	355	-17.671	9.025	-10.96	0.3	Na_dend	100	K_DR	40			K_A_dist	128.0045	Ca_conc	-2.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.381982	Ex_channel	-1e-10	NMDA	-2e-11
357	332	-14.3	-16.2	6	0.3	Na_dend	100	K_DR	40	K_A_prox	74.88101			Ca_conc	-3e+15	CaT	0	CaL	10.33188	CaN	20	CaR	0	K_M	50	K_C	20.66375	K_AHP	30	H_CA1pyr_prox	2.450219			Ex_channel	-1e-10	NMDA	-2e-11
358	357	-22.583	-4.788	10.187	0.314	Na_dend	100	K_DR	40	K_A_prox	88.75902			Ca_conc	-2.5e+15	CaT	0	CaL	6.96751	CaN	20	CaR	0	K_M	50	K_C	13.93502	K_AHP	30	H_CA1pyr_prox	2.954874			Ex_channel	-1e-10	NMDA	-2e-11
359	358	-22.068	6.28	10.415	0.312	Na_dend	100	K_DR	40			K_A_dist	102.6176	Ca_conc	-2.5e+15	CaT	0	CaL	3.607861	CaN	20	CaR	0	K_M	50	K_C	7.215723	K_AHP	30			H_CA1pyr_dist	3.458821	Ex_channel	-1e-10	NMDA	-2e-11
360	359	-14.058	17.788	11.284	0.318	Na_dend	100	K_DR	40			K_A_dist	116.5465	Ca_conc	-2.5e+15	CaT	0	CaL	0.231159	CaN	20	CaR	0	K_M	50	K_C	0.462317	K_AHP	30			H_CA1pyr_dist	3.965326	Ex_channel	-1e-10	NMDA	-2e-11
361	360	-20.311	8.165	12.025	0.308	Na_dend	100	K_DR	40			K_A_dist	130.2833	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.464848	Ex_channel	-1e-10	NMDA	-2e-11
362	361	-15.18	8.655	10.089	0.2	Na_dend	100	K_DR	40			K_A_dist	141.3809	Ca_conc	-5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.868397	Ex_channel	-1e-10	NMDA	-2e-11
363	357	-9.15	-20.77	-14.124	0.304	Na_dend	100	K_DR	40	K_A_prox	89.58364			Ca_conc	-2.5e+15	CaT	0	CaL	6.767603	CaN	20	CaR	0	K_M	50	K_C	13.53521	K_AHP	30	H_CA1pyr_prox	2.98486			Ex_channel	-1e-10	NMDA	-2e-11
364	363	-10.841	-17.938	-16.776	0.306	Na_dend	100	K_DR	40			K_A_dist	104.3492	Ca_conc	-2.4e+15	CaT	0	CaL	3.188072	CaN	20	CaR	0	K_M	50	K_C	6.376144	K_AHP	30			H_CA1pyr_dist	3.521789	Ex_channel	-1e-10	NMDA	-2e-11
365	364	-4.32	-20.353	-16.837	0.304	Na_dend	100	K_DR	40			K_A_dist	119.0702	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.057099	Ex_channel	-1e-10	NMDA	-2e-11
366	365	-5.238	-21.515	-14.962	0.304	Na_dend	100	K_DR	40			K_A_dist	133.7686	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.591587	Ex_channel	-1e-10	NMDA	-2e-11
367	366	-7.218	-22.314	-12.861	0.304	Na_dend	100	K_DR	40			K_A_dist	148.4797	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.126533	Ex_channel	-1e-10	NMDA	-2e-11
368	367	-2.482	-23.655	-12.247	0.306	Na_dend	100	K_DR	40			K_A_dist	163.1937	Ca_conc	-2.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.661588	Ex_channel	-1e-10	NMDA	-2e-11
369	368	12.457	-20.981	-10.996	0.31	Na_dend	100	K_DR	40			K_A_dist	177.9137	Ca_conc	-2.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.19686	Ex_channel	-1e-10	NMDA	-2e-11
370	369	1.692	-19.774	-8.797	0.2	Na_dend	100	K_DR	40			K_A_dist	189.8534	Ca_conc	-4.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.631031	Ex_channel	-1e-10	NMDA	-2e-11
371	265	-13.6	-12.5	0	0.7	Na_dend	100	K_DR	40	K_A_prox	45.37953			Ca_conc	-1.5e+15	CaT	0	CaL	17.48375	CaN	20	CaR	0	K_M	50	K_C	34.9675	K_AHP	30	H_CA1pyr_prox	1.377437			Ex_channel	-1e-10	NMDA	-2e-11
372	371	-5.6	-8.1	-6	0.7	Na_dend	100	K_DR	40	K_A_prox	51.72172			Ca_conc	-2.5e+15	CaT	0	CaL	15.94625	CaN	20	CaR	0	K_M	50	K_C	31.8925	K_AHP	30	H_CA1pyr_prox	1.608063			Ex_channel	-1e-10	NMDA	-2e-11
373	372	-10.3	-0.3	6	0.3	Na_dend	100	K_DR	40	K_A_prox	58.27988			Ca_conc	-5.6e+15	CaT	0	CaL	14.35639	CaN	20	CaR	0	K_M	50	K_C	28.71278	K_AHP	30	H_CA1pyr_prox	1.846541			Ex_channel	-1e-10	NMDA	-2e-11
374	373	-24.238	1.088	-9.904	0.31	Na_dend	100	K_DR	40	K_A_prox	72.69317			Ca_conc	-2.5e+15	CaT	0	CaL	10.86226	CaN	20	CaR	0	K_M	50	K_C	21.72452	K_AHP	30	H_CA1pyr_prox	2.370661			Ex_channel	-1e-10	NMDA	-2e-11
375	374	-19.725	1.505	-16.896	0.304	Na_dend	100	K_DR	40	K_A_prox	87.0018			Ca_conc	-2.5e+15	CaT	0	CaL	7.393504	CaN	20	CaR	0	K_M	50	K_C	14.78701	K_AHP	30	H_CA1pyr_prox	2.890974			Ex_channel	-1e-10	NMDA	-2e-11
376	375	-15.768	4.395	-20.398	0.308	Na_dend	100	K_DR	40			K_A_dist	101.3864	Ca_conc	-2.5e+15	CaT	0	CaL	3.906323	CaN	20	CaR	0	K_M	50	K_C	7.812645	K_AHP	30			H_CA1pyr_dist	3.414052	Ex_channel	-1e-10	NMDA	-2e-11
377	376	-14.183	3.675	-21.37	0.302	Na_dend	100	K_DR	40			K_A_dist	115.637	Ca_conc	-2.6e+15	CaT	0	CaL	0.451625	CaN	20	CaR	0	K_M	50	K_C	0.903251	K_AHP	30			H_CA1pyr_dist	3.932256	Ex_channel	-1e-10	NMDA	-2e-11
378	377	-12.023	2.786	-23.117	0.308	Na_dend	100	K_DR	40			K_A_dist	130.0499	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.456359	Ex_channel	-1e-10	NMDA	-2e-11
379	378	-11.849	2.416	-22.908	0.302	Na_dend	100	K_DR	40			K_A_dist	144.297	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.974437	Ex_channel	-1e-10	NMDA	-2e-11
380	379	-8.414	7.035	-23.407	0.3	Na_dend	100	K_DR	40			K_A_dist	158.514	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.491419	Ex_channel	-1e-10	NMDA	-2e-11
381	373	-27.252	-1.918	-2.22	0.31	Na_dend	100	K_DR	40	K_A_prox	73.35509			Ca_conc	-2.4e+15	CaT	0	CaL	10.7018	CaN	20	CaR	0	K_M	50	K_C	21.40359	K_AHP	30	H_CA1pyr_prox	2.39473			Ex_channel	-1e-10	NMDA	-2e-11
382	381	-26.078	-2.167	-6.897	0.308	Na_dend	100	K_DR	40	K_A_prox	88.23893			Ca_conc	-2.4e+15	CaT	0	CaL	7.093593	CaN	20	CaR	0	K_M	50	K_C	14.18719	K_AHP	30	H_CA1pyr_prox	2.935961			Ex_channel	-1e-10	NMDA	-2e-11
383	382	-23.91	-7.091	-11.001	0.306	Na_dend	100	K_DR	40			K_A_dist	103.2308	Ca_conc	-2.4e+15	CaT	0	CaL	3.459208	CaN	20	CaR	0	K_M	50	K_C	6.918416	K_AHP	30			H_CA1pyr_dist	3.481119	Ex_channel	-1e-10	NMDA	-2e-11
384	383	-22.663	-4.563	-14.13	0.304	Na_dend	100	K_DR	40			K_A_dist	118.1325	Ca_conc	-2.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.023001	Ex_channel	-1e-10	NMDA	-2e-11
385	384	-20.297	-1.098	-16.06	0.278	Na_dend	100	K_DR	40			K_A_dist	132.3806	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.541111	Ex_channel	-1e-10	NMDA	-2e-11
386	385	-15.8	3.337	-15.692	0.2	Na_dend	100	K_DR	40			K_A_dist	144.7649	Ca_conc	-4.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.991451	Ex_channel	-1e-10	NMDA	-2e-11
387	372	-12.3	-12.3	0	0.3	Na_dend	100	K_DR	40	K_A_prox	61.28888			Ca_conc	-3.8e+15	CaT	0	CaL	13.62694	CaN	20	CaR	0	K_M	50	K_C	27.25388	K_AHP	30	H_CA1pyr_prox	1.955959			Ex_channel	-1e-10	NMDA	-2e-11
388	387	-17.3	-14.6	-6	0.3	Na_dend	100	K_DR	40	K_A_prox	74.16933			Ca_conc	-2.8e+15	CaT	0	CaL	10.5044	CaN	20	CaR	0	K_M	50	K_C	21.00881	K_AHP	30	H_CA1pyr_prox	2.424339			Ex_channel	-1e-10	NMDA	-2e-11
389	388	-24.31	-5.475	-10.561	0.306	Na_dend	100	K_DR	40	K_A_prox	89.0548			Ca_conc	-2.4e+15	CaT	0	CaL	6.895806	CaN	20	CaR	0	K_M	50	K_C	13.79161	K_AHP	30	H_CA1pyr_prox	2.965629			Ex_channel	-1e-10	NMDA	-2e-11
390	389	-23.702	-4.783	-11.574	0.304	Na_dend	100	K_DR	40			K_A_dist	103.7987	Ca_conc	-2.5e+15	CaT	0	CaL	3.321529	CaN	20	CaR	0	K_M	50	K_C	6.643059	K_AHP	30			H_CA1pyr_dist	3.501771	Ex_channel	-1e-10	NMDA	-2e-11
391	390	-23.518	-2.944	-12.772	0.306	Na_dend	100	K_DR	40			K_A_dist	118.6067	Ca_conc	-2.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.040245	Ex_channel	-1e-10	NMDA	-2e-11
392	391	-20.578	-7.435	-12.997	0.274	Na_dend	100	K_DR	40			K_A_dist	132.6037	Ca_conc	-2.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.549227	Ex_channel	-1e-10	NMDA	-2e-11
393	392	-18.392	-3.463	-12.096	0.2	Na_dend	100	K_DR	40			K_A_dist	144.8599	Ca_conc	-4.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.994904	Ex_channel	-1e-10	NMDA	-2e-11
394	388	-5.118	-22.62	-9.791	0.33	Na_dend	100	K_DR	40	K_A_prox	88.01494			Ca_conc	-2.4e+15	CaT	0	CaL	7.147893	CaN	20	CaR	0	K_M	50	K_C	14.29579	K_AHP	30	H_CA1pyr_prox	2.927816			Ex_channel	-1e-10	NMDA	-2e-11
395	394	-13.995	-17.729	-9.738	0.31	Na_dend	100	K_DR	40			K_A_dist	101.5432	Ca_conc	-2.6e+15	CaT	0	CaL	3.868309	CaN	20	CaR	0	K_M	50	K_C	7.736619	K_AHP	30			H_CA1pyr_dist	3.419754	Ex_channel	-1e-10	NMDA	-2e-11
396	395	-10.842	-19.58	-10.629	0.316	Na_dend	100	K_DR	40			K_A_dist	115.1706	Ca_conc	-2.6e+15	CaT	0	CaL	0.564707	CaN	20	CaR	0	K_M	50	K_C	1.129413	K_AHP	30			H_CA1pyr_dist	3.915294	Ex_channel	-1e-10	NMDA	-2e-11
397	396	-5.435	-21.307	-11.649	0.318	Na_dend	100	K_DR	40			K_A_dist	128.8569	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.412979	Ex_channel	-1e-10	NMDA	-2e-11
398	397	6.19	-19.964	-12.193	0.3	Na_dend	100	K_DR	40			K_A_dist	142.1659	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.896941	Ex_channel	-1e-10	NMDA	-2e-11
399	387	-0.6	-13.7	6	0.3	Na_dend	100	K_DR	40	K_A_prox	69.52144			Ca_conc	-4.5e+15	CaT	0	CaL	11.63117	CaN	20	CaR	0	K_M	50	K_C	23.26233	K_AHP	30	H_CA1pyr_prox	2.255325			Ex_channel	-1e-10	NMDA	-2e-11
400	399	-5.607	-24.757	-1.936	0.326	Na_dend	100	K_DR	40	K_A_prox	83.52319			Ca_conc	-2.4e+15	CaT	0	CaL	8.236803	CaN	20	CaR	0	K_M	50	K_C	16.47361	K_AHP	30	H_CA1pyr_prox	2.76448			Ex_channel	-1e-10	NMDA	-2e-11
401	400	-11.633	-20.47	-9.621	0.328	Na_dend	100	K_DR	40			K_A_dist	97.51214	Ca_conc	-2.4e+15	CaT	0	CaL	4.845543	CaN	20	CaR	0	K_M	50	K_C	9.691085	K_AHP	30			H_CA1pyr_dist	3.273169	Ex_channel	-1e-10	NMDA	-2e-11
402	401	-15.761	-14.093	-13.403	0.312	Na_dend	100	K_DR	40			K_A_dist	111.2804	Ca_conc	-2.6e+15	CaT	0	CaL	1.50778	CaN	20	CaR	0	K_M	50	K_C	3.01556	K_AHP	30			H_CA1pyr_dist	3.773833	Ex_channel	-1e-10	NMDA	-2e-11
403	402	-15.304	-11.68	-15.976	0.312	Na_dend	100	K_DR	40			K_A_dist	125.0399	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.27418	Ex_channel	-1e-10	NMDA	-2e-11
404	403	-13.027	-12.131	-17.625	0.312	Na_dend	100	K_DR	40			K_A_dist	138.8175	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.775181	Ex_channel	-1e-10	NMDA	-2e-11
405	404	-10.539	-12.977	-18.437	0.31	Na_dend	100	K_DR	40			K_A_dist	152.5057	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.272934	Ex_channel	-1e-10	NMDA	-2e-11
406	405	-6.527	-14.063	-18.857	0.304	Na_dend	100	K_DR	40			K_A_dist	165.9324	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.761178	Ex_channel	-1e-10	NMDA	-2e-11
407	406	-10.577	-5.249	-18.331	0.236	Na_dend	100	K_DR	40			K_A_dist	177.9251	Ca_conc	-3.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.197275	Ex_channel	-1e-10	NMDA	-2e-11
408	407	-6.925	-6.18	-17.814	0.2	Na_dend	100	K_DR	40			K_A_dist	188.9729	Ca_conc	-5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.599014	Ex_channel	-1e-10	NMDA	-2e-11
409	399	-1.531	-16.585	19.205	0.312	Na_dend	100	K_DR	40	K_A_prox	83.50311			Ca_conc	-2.5e+15	CaT	0	CaL	8.24167	CaN	20	CaR	0	K_M	50	K_C	16.48334	K_AHP	30	H_CA1pyr_prox	2.76375			Ex_channel	-1e-10	NMDA	-2e-11
410	409	-6.491	-19.584	15.486	0.336	Na_dend	100	K_DR	40			K_A_dist	97.69143	Ca_conc	-2.3e+15	CaT	0	CaL	4.802077	CaN	20	CaR	0	K_M	50	K_C	9.604155	K_AHP	30			H_CA1pyr_dist	3.279688	Ex_channel	-1e-10	NMDA	-2e-11
411	410	12.23	-22.762	-5.71	0.364	Na_dend	100	K_DR	40			K_A_dist	112.246	Ca_conc	-2.1e+15	CaT	0	CaL	1.273689	CaN	20	CaR	0	K_M	50	K_C	2.547379	K_AHP	30			H_CA1pyr_dist	3.808947	Ex_channel	-1e-10	NMDA	-2e-11
412	411	5.207	-19.555	-14.973	0.31	Na_dend	100	K_DR	40			K_A_dist	126.0914	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.312415	Ex_channel	-1e-10	NMDA	-2e-11
413	412	2.577	-16.835	-18.386	0.304	Na_dend	100	K_DR	40			K_A_dist	139.8755	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.813655	Ex_channel	-1e-10	NMDA	-2e-11
414	413	3.008	-15.079	-19.622	0.3	Na_dend	100	K_DR	40			K_A_dist	153.5864	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.312232	Ex_channel	-1e-10	NMDA	-2e-11
415	371	-5	-16.5	0	0.7	Na_dend	100	K_DR	40	K_A_prox	54.86205			Ca_conc	-1.7e+15	CaT	0	CaL	15.18496	CaN	20	CaR	0	K_M	50	K_C	30.36992	K_AHP	30	H_CA1pyr_prox	1.722256			Ex_channel	-1e-10	NMDA	-2e-11
416	415	-3.5	-0.9	6	0.7	Na_dend	100	K_DR	40	K_A_prox	58.7144			Ca_conc	-4.1e+15	CaT	0	CaL	14.25105	CaN	20	CaR	0	K_M	50	K_C	28.50211	K_AHP	30	H_CA1pyr_prox	1.862342			Ex_channel	-1e-10	NMDA	-2e-11
417	416	-23.058	-12.313	3.853	0.322	Na_dend	100	K_DR	40	K_A_prox	73.24655			Ca_conc	-2.4e+15	CaT	0	CaL	10.72811	CaN	20	CaR	0	K_M	50	K_C	21.45622	K_AHP	30	H_CA1pyr_prox	2.390784			Ex_channel	-1e-10	NMDA	-2e-11
418	417	-25.257	-8.024	-0.803	0.318	Na_dend	100	K_DR	40	K_A_prox	87.82877			Ca_conc	-2.4e+15	CaT	0	CaL	7.193026	CaN	20	CaR	0	K_M	50	K_C	14.38605	K_AHP	30	H_CA1pyr_prox	2.921046			Ex_channel	-1e-10	NMDA	-2e-11
419	418	-23.832	-11.465	-2.346	0.32	Na_dend	100	K_DR	40			K_A_dist	102.4314	Ca_conc	-2.4e+15	CaT	0	CaL	3.652997	CaN	20	CaR	0	K_M	50	K_C	7.305995	K_AHP	30			H_CA1pyr_dist	3.45205	Ex_channel	-1e-10	NMDA	-2e-11
420	419	-19.853	-16.598	-0.704	0.3	Na_dend	100	K_DR	40			K_A_dist	116.6692	Ca_conc	-2.6e+15	CaT	0	CaL	0.201412	CaN	20	CaR	0	K_M	50	K_C	0.402824	K_AHP	30			H_CA1pyr_dist	3.969788	Ex_channel	-1e-10	NMDA	-2e-11
421	420	-15.819	-19.383	-3.027	0.33	Na_dend	100	K_DR	40			K_A_dist	130.5299	Ca_conc	-2.4e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.473814	Ex_channel	-1e-10	NMDA	-2e-11
422	421	-15.081	-12.417	-2.973	0.2	Na_dend	100	K_DR	40			K_A_dist	141.3979	Ca_conc	-5.1e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.869013	Ex_channel	-1e-10	NMDA	-2e-11
423	420	-8.358	-18.061	12.095	0.342	Na_dend	100	K_DR	40			K_A_dist	129.4777	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.435554	Ex_channel	-1e-10	NMDA	-2e-11
424	423	-6.368	-12.213	17.127	0.312	Na_dend	100	K_DR	40			K_A_dist	141.5658	Ca_conc	-2.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.875119	Ex_channel	-1e-10	NMDA	-2e-11
425	424	-5.383	-2.843	21.22	0.302	Na_dend	100	K_DR	40			K_A_dist	153.7075	Ca_conc	-3e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.316638	Ex_channel	-1e-10	NMDA	-2e-11
426	425	-4.091	-1.783	21.558	0.3	Na_dend	100	K_DR	40			K_A_dist	165.8158	Ca_conc	-3e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.756939	Ex_channel	-1e-10	NMDA	-2e-11
427	416	-14.8	-1.9	12	0.3	Na_dend	100	K_DR	40	K_A_prox	69.24586			Ca_conc	-3.5e+15	CaT	0	CaL	11.69797	CaN	20	CaR	0	K_M	50	K_C	23.39595	K_AHP	30	H_CA1pyr_prox	2.245304			Ex_channel	-1e-10	NMDA	-2e-11
428	427	-17.247	0.127	18.003	0.314	Na_dend	100	K_DR	40	K_A_prox	82.95822			Ca_conc	-2.6e+15	CaT	0	CaL	8.373764	CaN	20	CaR	0	K_M	50	K_C	16.74753	K_AHP	30	H_CA1pyr_prox	2.743935			Ex_channel	-1e-10	NMDA	-2e-11
429	428	-18.807	-2.95	15.995	0.312	Na_dend	100	K_DR	40			K_A_dist	96.63373	Ca_conc	-2.6e+15	CaT	0	CaL	5.058491	CaN	20	CaR	0	K_M	50	K_C	10.11698	K_AHP	30			H_CA1pyr_dist	3.241226	Ex_channel	-1e-10	NMDA	-2e-11
430	429	-19.767	-2.93	14.28	0.304	Na_dend	100	K_DR	40			K_A_dist	110.1422	Ca_conc	-2.7e+15	CaT	0	CaL	1.783705	CaN	20	CaR	0	K_M	50	K_C	3.567411	K_AHP	30			H_CA1pyr_dist	3.732444	Ex_channel	-1e-10	NMDA	-2e-11
431	430	-19.01	-3.288	15.367	0.308	Na_dend	100	K_DR	40			K_A_dist	123.7077	Ca_conc	-2.6e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.225734	Ex_channel	-1e-10	NMDA	-2e-11
432	431	-13.802	0.687	20.688	0.316	Na_dend	100	K_DR	40			K_A_dist	137.3911	Ca_conc	-2.5e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.723312	Ex_channel	-1e-10	NMDA	-2e-11
433	432	-5.467	2.254	23.667	0.3	Na_dend	100	K_DR	40			K_A_dist	150.8081	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.211203	Ex_channel	-1e-10	NMDA	-2e-11
434	427	-13.199	-12.617	16.088	0.318	Na_dend	100	K_DR	40	K_A_prox	82.63049			Ca_conc	-2.6e+15	CaT	0	CaL	8.453214	CaN	20	CaR	0	K_M	50	K_C	16.90643	K_AHP	30	H_CA1pyr_prox	2.732018			Ex_channel	-1e-10	NMDA	-2e-11
435	434	-11.493	-13.93	15.75	0.308	Na_dend	100	K_DR	40			K_A_dist	95.80981	Ca_conc	-2.7e+15	CaT	0	CaL	5.258228	CaN	20	CaR	0	K_M	50	K_C	10.51646	K_AHP	30			H_CA1pyr_dist	3.211266	Ex_channel	-1e-10	NMDA	-2e-11
436	435	-11.208	-13.153	16.162	0.3	Na_dend	100	K_DR	40			K_A_dist	108.8232	Ca_conc	-2.8e+15	CaT	0	CaL	2.103461	CaN	20	CaR	0	K_M	50	K_C	4.206923	K_AHP	30			H_CA1pyr_dist	3.684481	Ex_channel	-1e-10	NMDA	-2e-11
437	415	-0.6	-12.5	-6	0.7	Na_dend	100	K_DR	40	K_A_prox	62.49517			Ca_conc	-2.1e+15	CaT	0	CaL	13.33451	CaN	20	CaR	0	K_M	50	K_C	26.66901	K_AHP	30	H_CA1pyr_prox	1.999824			Ex_channel	-1e-10	NMDA	-2e-11
438	437	-5.996	-19.346	-16.873	0.306	Na_dend	100	K_DR	40	K_A_prox	76.99388			Ca_conc	-2.5e+15	CaT	0	CaL	9.819666	CaN	20	CaR	0	K_M	50	K_C	19.63933	K_AHP	30	H_CA1pyr_prox	2.52705			Ex_channel	-1e-10	NMDA	-2e-11
439	438	-3.519	-18.927	-18.468	0.312	Na_dend	100	K_DR	40			K_A_dist	91.66643	Ca_conc	-2.4e+15	CaT	0	CaL	6.262684	CaN	20	CaR	0	K_M	50	K_C	12.52537	K_AHP	30			H_CA1pyr_dist	3.060597	Ex_channel	-1e-10	NMDA	-2e-11
440	439	3.015	-17.827	-18.659	0.3	Na_dend	100	K_DR	40			K_A_dist	105.9564	Ca_conc	-2.6e+15	CaT	0	CaL	2.798453	CaN	20	CaR	0	K_M	50	K_C	5.596907	K_AHP	30			H_CA1pyr_dist	3.580232	Ex_channel	-1e-10	NMDA	-2e-11
441	440	-10.464	-18.862	-9.418	0.31	Na_dend	100	K_DR	40			K_A_dist	118.9015	Ca_conc	-2.7e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.050963	Ex_channel	-1e-10	NMDA	-2e-11
442	441	-13.221	-18.556	-5.229	0.304	Na_dend	100	K_DR	40			K_A_dist	131.7586	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.518494	Ex_channel	-1e-10	NMDA	-2e-11
443	442	-15.071	-17.211	-4.028	0.302	Na_dend	100	K_DR	40			K_A_dist	144.5344	Ca_conc	-2.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.98307	Ex_channel	-1e-10	NMDA	-2e-11
444	443	-17.753	-13.808	-6.495	0.306	Na_dend	100	K_DR	40			K_A_dist	157.4098	Ca_conc	-2.8e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.451265	Ex_channel	-1e-10	NMDA	-2e-11
445	444	-18.012	-9.511	-11.042	0.302	Na_dend	100	K_DR	40			K_A_dist	170.1529	Ca_conc	-2.9e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	5.914651	Ex_channel	-1e-10	NMDA	-2e-11
446	445	-12.279	-8.352	-11.788	0.2	Na_dend	100	K_DR	40			K_A_dist	180.581	Ca_conc	-5.3e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	6.293853	Ex_channel	-1e-10	NMDA	-2e-11
447	440	4.956	-13.653	-15.618	0.308	Na_dend	100	K_DR	40			K_A_dist	117.6868	Ca_conc	-3e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.006794	Ex_channel	-1e-10	NMDA	-2e-11
448	447	6.776	-13.131	-15.254	0.306	Na_dend	100	K_DR	40			K_A_dist	129.3673	Ca_conc	-3.1e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.43154	Ex_channel	-1e-10	NMDA	-2e-11
449	448	6.768	-16.516	-11.128	0.3	Na_dend	100	K_DR	40			K_A_dist	140.9359	Ca_conc	-3.2e+15	CaT	0	CaL	0	CaN	20	CaR	0	K_M	50			K_AHP	30			H_CA1pyr_dist	4.852214	Ex_channel	-1e-10	NMDA	-2e-11
450	437	2.595	-25.172	5.591	0.312	Na_dend	100	K_DR	40	K_A_prox	76.74879			Ca_conc	-2.5e+15	CaT	0	CaL	9.87908	CaN	20	CaR	0	K_M	50	K_C	19.75816	K_AHP	30	H_CA1pyr_prox	2.518138			Ex_channel	-1e-10	NMDA	-2e-11
451	450	7.905	-23.328	6.409	0.3	Na_dend	100	K_DR	40			K_A_dist	90.74692	Ca_conc	-2.6e+15	CaT	0	CaL	6.485596	CaN	20	CaR	0	K_M	50	K_C	12.97119	K_AHP	30			H_CA1pyr_dist	3.027161	Ex_channel	-1e-10	NMDA	-2e-11
452	451	-2.419	-14.253	-6.911	0.316	Na_dend	100	K_DR	40			K_A_dist	99.56	Ca_conc	-3.9e+15	CaT	0	CaL	4.349092	CaN	20	CaR	0	K_M	50	K_C	8.698184	K_AHP	30			H_CA1pyr_dist	3.347636	Ex_channel	-1e-10	NMDA	-2e-11
453	452	5.619	-9.547	-11.089	0.3	Na_dend	100	K_DR	40			K_A_dist	108.1809	Ca_conc	-4.3e+15	CaT	0	CaL	2.259184	CaN	20	CaR	0	K_M	50	K_C	4.518368	K_AHP	30			H_CA1pyr_dist	3.661122	Ex_channel	-1e-10	NMDA	-2e-11
454	451	1.964	-19.177	-9.251	0.314	Na_dend	100	K_DR	40			K_A_dist	102.5071	Ca_conc	-3e+15	CaT	0	CaL	3.634645	CaN	20	CaR	0	K_M	50	K_C	7.269291	K_AHP	30			H_CA1pyr_dist	3.454803	Ex_channel	-1e-10	NMDA	-2e-11
455	454	-0.564	-14.823	-14.749	0.3	Na_dend	100	K_DR	40			K_A_dist	114.0121	Ca_conc	-3.2e+15	CaT	0	CaL	0.845548	CaN	20	CaR	0	K_M	50	K_C	1.691096	K_AHP	30			H_CA1pyr_dist	3.873168	Ex_channel	-1e-10	NMDA	-2e-11
