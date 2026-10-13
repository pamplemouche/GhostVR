.class public final LRn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LVm;


# direct methods
.method public constructor <init>(LVm;)V
    .locals 0

    iput-object p1, p0, LRn;->w:LVm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LRn;->w:LVm;

    .line 1
    invoke-virtual {v0}, LVm;->c()V

    return-void
.end method
