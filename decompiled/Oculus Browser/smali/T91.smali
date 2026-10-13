.class public LT91;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LS91;


# instance fields
.field public final a:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "print"

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iput-object p1, p0, LT91;->a:Landroid/print/PrintManager;

    return-void
.end method
