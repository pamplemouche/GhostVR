.class public final synthetic LXt0;
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

    iput-object p1, p0, LXt0;->w:Leu0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LXt0;->w:Leu0;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Leu0;->a(LQu0;)V

    return-void
.end method
