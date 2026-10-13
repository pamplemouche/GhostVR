.class public LQ91;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LP91;


# instance fields
.field public a:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LR91;

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LQ91;->a:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    return-void
.end method
