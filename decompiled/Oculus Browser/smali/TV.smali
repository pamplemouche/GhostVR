.class public final synthetic LTV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LTV;->w:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, LTV;->w:I

    .line 1
    sget-object v1, LSU;->k:LSU;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget v1, v1, LSU;->b:I

    if-lt v0, v1, :cond_0

    .line 4
    sget-object v1, LSU;->k:LSU;

    invoke-virtual {v1, v0}, LSU;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
