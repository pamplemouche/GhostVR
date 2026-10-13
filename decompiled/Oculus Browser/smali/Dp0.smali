.class public LDp0;
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
    iput-object p1, p0, LDp0;->w:LKp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LDp0;->w:LKp0;

    .line 2
    iget-object v0, v0, LKp0;->J:LGp0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, LGp0;->f()V

    :cond_0
    return-void
.end method
