.class public abstract LDQ0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LNQ0;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LNQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDQ0;->a:LNQ0;

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LDQ0;->b:Landroid/content/Context;

    return-void
.end method
