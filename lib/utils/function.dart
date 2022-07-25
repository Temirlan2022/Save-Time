import 'tovar_brain.dart';

int baary = 0;
int baaryShtuk = 0;
int chek = 0;
int birigip;
int baasy = 0;
int baasy2 = 0;
int baasy3 = 0;
int syrnyiShtuk = Tovary.syrnyiShtuk;
int meksikanskiyShtuk = Tovary.meksikanskiyShtuk;
int ovoshnoiShtuk = Tovary.ovoshnoiShtuk;
int syrnyiBaasy = Tovary.syrnyiBaasy;
int meksikanskiyBaasy = Tovary.meksikanskiyBaasy;
int ovoshnoiBaasy = Tovary.ovoshnoiBaasy;

void syrnyiShtukadd() {
  baaryShtuk++;
  syrnyiShtuk++;
  baasy = syrnyiShtuk * syrnyiBaasy;
  chek = baasy + baasy2 + baasy3;
  print(baasy);
  print(chek);
}

void syrnyiShtukremove() {
  if (syrnyiShtuk < 1 || baaryShtuk < 1) {
    return;
  }
  baaryShtuk--;
  syrnyiShtuk--;
  if (baasy > 0) {
    chek -= syrnyiBaasy;
    baasy -= syrnyiBaasy;
    print(baasy);
    print(chek);
  }
}

void meksikanskiyShtukadd() {
  baaryShtuk++;
  meksikanskiyShtuk++;
  baasy2 = meksikanskiyShtuk * meksikanskiyBaasy;
  chek = baasy + baasy2 + baasy3;
  print(baasy2);
  print(chek);
}

void meksikanskiyShtukremove() {
  if (meksikanskiyShtuk < 1 || baaryShtuk < 1) {
    return;
  }
  baaryShtuk--;
  meksikanskiyShtuk--;
  if (baasy2 > 0) {
    chek -= meksikanskiyBaasy;
    baasy2 -= meksikanskiyBaasy;
    print(baasy2);
    print(chek);
  }
}

void ovoshnoiShtukadd() {
  baaryShtuk++;
  ovoshnoiShtuk++;
  baasy3 = ovoshnoiShtuk * ovoshnoiBaasy;
  chek = baasy + baasy2 + baasy3;
  print(baasy3);
  print(chek);
}

void ovoshnoiShtukremove() {
  if (ovoshnoiShtuk < 1 || baaryShtuk < 1) {
    return;
  }
  baaryShtuk--;
  ovoshnoiShtuk--;
  if (baasy3 > 0) {
    chek -= ovoshnoiBaasy;
    baasy3 -= ovoshnoiBaasy;
    print(baasy3);
    print(chek);
  }
}
