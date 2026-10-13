.class public LvI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LwI0;


# direct methods
.method public constructor <init>(LwI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LvI0;->w:LwI0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LvI0;->w:LwI0;

    invoke-virtual {v0}, LwI0;->g()V

    return-void
.end method
