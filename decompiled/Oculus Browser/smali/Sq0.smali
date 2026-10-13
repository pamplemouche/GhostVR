.class public final synthetic LSq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRd1;


# instance fields
.field public final a:LZq0;


# direct methods
.method public constructor <init>(LZq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSq0;->a:LZq0;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 2

    iget-object v0, p0, LSq0;->a:LZq0;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Lbs0;

    iget-object v0, v0, LZq0;->e:Lar0;

    .line 2
    iget-object v0, v0, Lar0;->y:Landroid/widget/ListView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lbs0;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
