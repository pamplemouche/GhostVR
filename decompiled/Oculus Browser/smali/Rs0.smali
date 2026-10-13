.class public final synthetic LRs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSs0;


# direct methods
.method public constructor <init>(LSs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRs0;->w:LSs0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LRs0;->w:LSs0;

    invoke-virtual {v0}, LSs0;->a()V

    return-void
.end method
