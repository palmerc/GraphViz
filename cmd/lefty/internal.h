/*************************************************************************
 * Copyright (c) 2011 AT&T Intellectual Property 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Details at https://graphviz.org
 *************************************************************************/

#pragma once

#ifdef __cplusplus
extern "C" {
#endif

/* Lefteris Koutsofios - AT&T Labs Research */

typedef struct Ifunc_t {
    char *name;
    int (*func) (int, Tonm_t *);
    int min, max;
} Ifunc_t;

void Iinit (void);
void Iterm (void);
int Igetfunc (char *);

extern Ifunc_t Ifuncs[];
extern int Ifuncn;

#ifdef __cplusplus
}
#endif

