.class public final synthetic LRE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFU0;


# instance fields
.field public final w:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRE0;->w:LjF0;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LRE0;->w:LjF0;

    .line 1
    invoke-virtual {v0}, LjF0;->T()V

    return-void
.end method
