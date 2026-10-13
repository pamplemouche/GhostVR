.class public LVY;
.super LBc1;
.source "PG"


# instance fields
.field public final synthetic A:LXY;


# direct methods
.method public constructor <init>(LXY;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVY;->A:LXY;

    invoke-direct {p0, p2}, LBc1;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, LVY;->A:LXY;

    invoke-virtual {p1}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-void
.end method
