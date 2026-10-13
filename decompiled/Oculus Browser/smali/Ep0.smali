.class public LEp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LKp0;


# direct methods
.method public constructor <init>(LKp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEp0;->w:LKp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lrc1;->x:Lrc1;

    .line 2
    iget-object v1, p0, LEp0;->w:LKp0;

    invoke-virtual {v0, v1}, Lrc1;->b(Landroid/view/View;)V

    return-void
.end method
