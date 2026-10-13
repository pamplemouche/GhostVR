.class public LSw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;

.field public final synthetic x:LTw0;


# direct methods
.method public constructor <init>(LTw0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSw0;->x:LTw0;

    iput-object p2, p0, LSw0;->w:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LSw0;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, p0, LSw0;->x:LTw0;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, LTw0;->c:Z

    return-void
.end method
