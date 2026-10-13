.class public LAd;
.super Lyd;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;LI4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lyd;-><init>(Landroid/content/Context;LI4;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ActionProvider;)Lud;
    .locals 2

    .line 1
    new-instance v0, Lzd;

    iget-object v1, p0, Ldd;->x:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lzd;-><init>(LAd;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
