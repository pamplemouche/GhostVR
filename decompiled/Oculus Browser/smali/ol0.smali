.class public Lol0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnl0;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:LWT;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lol0;->a:Landroid/app/Activity;

    .line 3
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lol0;->b:LWT;

    return-void
.end method
