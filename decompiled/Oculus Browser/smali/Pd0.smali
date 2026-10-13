.class public final synthetic LPd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRd1;


# instance fields
.field public final a:LTd0;


# direct methods
.method public constructor <init>(LTd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPd0;->a:LTd0;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, LPd0;->a:LTd0;

    .line 1
    iget-object v0, v0, LTd0;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0e011e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
