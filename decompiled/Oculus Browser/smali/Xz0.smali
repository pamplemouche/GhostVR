.class public final synthetic LXz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LZz0;


# direct methods
.method public constructor <init>(LZz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXz0;->w:LZz0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LXz0;->w:LZz0;

    .line 1
    invoke-virtual {v0}, LZz0;->a()V

    return-void
.end method
