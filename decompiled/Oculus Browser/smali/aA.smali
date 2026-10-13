.class public final synthetic LaA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LjA;


# direct methods
.method public constructor <init>(LjA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaA;->w:LjA;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LaA;->w:LjA;

    .line 1
    iget-object v0, v0, LjA;->i:Lrw;

    check-cast v0, Lmb0;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lmb0;->a(I)V

    return-void
.end method
