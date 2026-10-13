.class public final synthetic LQq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lar0;


# direct methods
.method public constructor <init>(Lar0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQq0;->a:Lar0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LQq0;->a:Lar0;

    check-cast p1, Lvr0;

    if-eqz v0, :cond_0

    .line 1
    iget-object p1, p1, Lvr0;->b:Lrr0;

    iput-object p1, v0, Lar0;->y:Landroid/widget/ListView;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
