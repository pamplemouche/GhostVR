.class public final synthetic LRs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LQs;


# direct methods
.method public constructor <init>(LQs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRs;->w:LQs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LRs;->w:LQs;

    invoke-virtual {v0}, LQs;->b()V

    return-void
.end method
