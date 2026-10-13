.class public final synthetic LVt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Leu0;


# direct methods
.method public constructor <init>(Leu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVt0;->w:Leu0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LVt0;->w:Leu0;

    .line 1
    iget-boolean v1, v0, Leu0;->S:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu0;->a(LQu0;)V

    :cond_0
    return-void
.end method
