.class public final synthetic LgF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LhF0;


# direct methods
.method public constructor <init>(LhF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LgF0;->w:LhF0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LgF0;->w:LhF0;

    .line 1
    iget-object v0, v0, LhF0;->b:LjF0;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LjF0;->I0:Z

    return-void
.end method
