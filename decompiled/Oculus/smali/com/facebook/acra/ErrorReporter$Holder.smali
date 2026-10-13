.class Lcom/facebook/acra/ErrorReporter$Holder;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final ERROR_REPORTER:Lcom/facebook/acra/ErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 998
    new-instance v0, Lcom/facebook/acra/ErrorReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/acra/ErrorReporter;-><init>(Lcom/facebook/acra/ErrorReporter$1;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$Holder;->ERROR_REPORTER:Lcom/facebook/acra/ErrorReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
