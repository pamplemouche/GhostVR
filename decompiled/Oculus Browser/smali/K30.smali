.class public LK30;
.super LP8;
.source "PG"

# interfaces
.implements LL30;


# instance fields
.field public z:LS30;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbc1;ZZZZLjava/lang/String;)V
    .locals 10

    move-object v8, p0

    const v0, 0x7f14024b

    move-object v1, p1

    .line 1
    invoke-direct {p0, p1, v0}, LP8;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v9, LS30;

    move-object v0, v9

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, LS30;-><init>(Landroid/content/Context;ZZZZLjava/lang/String;LL30;)V

    iput-object v9, v8, LK30;->z:LS30;

    .line 3
    iput-object v8, v9, LS30;->x:LK30;

    move-object v0, p2

    .line 4
    iput-object v0, v9, LS30;->A:Lbc1;

    .line 5
    new-instance v0, LR30;

    invoke-direct {v0, v9}, LR30;-><init>(LS30;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 6
    iget-object v0, v9, LS30;->E:LP30;

    .line 7
    iget-object v0, v0, LBg;->w:LCg;

    invoke-virtual {v0}, LCg;->b()V

    .line 8
    iget-object v0, v8, LK30;->z:LS30;

    .line 9
    iget-object v1, v8, LP8;->y:LN8;

    .line 10
    iput-object v0, v1, LN8;->h:Landroid/view/View;

    const/4 v0, 0x0

    .line 11
    iput v0, v1, LN8;->i:I

    .line 12
    iput-boolean v0, v1, LN8;->n:Z

    return-void
.end method
