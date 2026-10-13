.class public final synthetic LHd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LKd0;


# direct methods
.method public constructor <init>(LKd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHd0;->w:LKd0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LHd0;->w:LKd0;

    .line 1
    iget-object v0, v0, LKd0;->i:Lde0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lde0;->b(Z)V

    return-void
.end method
