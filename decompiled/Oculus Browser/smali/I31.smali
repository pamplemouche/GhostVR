.class public LI31;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LM31;


# direct methods
.method public constructor <init>(LM31;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI31;->a:LM31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/app/Activity;

    .line 2
    iget-object v0, p0, LI31;->a:LM31;

    .line 3
    invoke-virtual {v0}, LM31;->e()V

    .line 4
    iput-object p1, v0, LM31;->A:Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, LM31;->g()V

    return-void
.end method
