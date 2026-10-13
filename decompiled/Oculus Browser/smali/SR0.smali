.class public LSR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKR0;


# instance fields
.field public final a:LTR0;


# direct methods
.method public constructor <init>(LTR0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LSR0;->a:LTR0;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    new-instance v0, LRR0;

    invoke-direct {v0, p0, p1}, LRR0;-><init>(LSR0;Z)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->c(Ljava/lang/Runnable;)V

    return-void
.end method
