.class public LEL0;
.super Ldh;
.source "PG"


# instance fields
.field public final P:Lne1;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;ILne1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Ldh;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p3, p0, LEL0;->P:Lne1;

    return-void
.end method
