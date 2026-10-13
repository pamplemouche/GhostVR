.class public LMY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LQY0;


# direct methods
.method public constructor <init>(LQY0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMY0;->w:LQY0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LMY0;->w:LQY0;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, LQY0;->g:I

    .line 3
    iput v1, v0, LQY0;->i:I

    .line 4
    iput v1, v0, LQY0;->k:I

    .line 5
    iput-boolean v1, v0, LQY0;->l:Z

    return-void
.end method
