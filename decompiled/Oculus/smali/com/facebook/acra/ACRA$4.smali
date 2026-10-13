.class final Lcom/facebook/acra/ACRA$4;
.super Ljava/lang/Object;
.source "ACRA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/ACRA;->installPeriodicReporter(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errorReporter:Lcom/facebook/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lcom/facebook/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/facebook/acra/ACRA$4;->val$errorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/acra/ACRA$4;->val$errorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter;->checkNativeReports()V

    .line 382
    return-void
.end method
