.class public final synthetic LQs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSs0;


# direct methods
.method public constructor <init>(LSs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQs0;->w:LSs0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LQs0;->w:LSs0;

    .line 1
    iget-object v1, v0, LSs0;->w:LWs0;

    .line 2
    iget-object v1, v1, LWs0;->a:LZs0;

    .line 3
    new-instance v2, LRs0;

    invoke-direct {v2, v0}, LRs0;-><init>(LSs0;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
