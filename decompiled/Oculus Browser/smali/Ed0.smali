.class public final synthetic LEd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LrU;


# instance fields
.field public final a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEd0;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LEd0;->a:Landroid/view/ViewGroup;

    .line 1
    new-instance v1, Lqd0;

    invoke-direct {v1, v0}, Lqd0;-><init>(Landroid/view/ViewGroup;)V

    return-object v1
.end method
