.class public final synthetic Llw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lpw0;


# direct methods
.method public constructor <init>(Lpw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llw0;->w:Lpw0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Llw0;->w:Lpw0;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lpw0;->H:Z

    .line 2
    iget-object v1, v0, Lpw0;->F:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lpw0;->F:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
