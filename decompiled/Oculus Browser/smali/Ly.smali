.class public final synthetic LLy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSy;

.field public final x:LRy;

.field public final y:LJx;


# direct methods
.method public constructor <init>(LSy;LRy;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLy;->w:LSy;

    iput-object p2, p0, LLy;->x:LRy;

    iput-object p3, p0, LLy;->y:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LLy;->w:LSy;

    iget-object v1, p0, LLy;->x:LRy;

    iget-object v2, p0, LLy;->y:LJx;

    .line 1
    invoke-virtual {v0, v1, v2}, LSy;->a(LRy;LJx;)V

    return-void
.end method
