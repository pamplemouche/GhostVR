.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ErrorReporterProvider;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorReporterProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/facebook/acra/ErrorReporter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ErrorReporterProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ErrorReporterProvider;->get()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method
