.class public Ln81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LA81;


# direct methods
.method public constructor <init>(LA81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln81;->w:LA81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln81;->w:LA81;

    .line 2
    iget-boolean v1, v0, LA81;->k:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, LA81;->m:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, LA81;->m:Z

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, LA81;->a()V

    return-void
.end method
