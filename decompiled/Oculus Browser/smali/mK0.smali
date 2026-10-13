.class public final synthetic LmK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LqK0;


# direct methods
.method public constructor <init>(LqK0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LmK0;->w:LqK0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LmK0;->w:LqK0;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, LqK0;->b(Z)V

    return-void
.end method
