.class public LNY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/view/KeyEvent;

.field public final synthetic x:LQY0;


# direct methods
.method public constructor <init>(LQY0;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNY0;->x:LQY0;

    iput-object p2, p0, LNY0;->w:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LNY0;->x:LQY0;

    iget-object v1, p0, LNY0;->w:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, LQY0;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
