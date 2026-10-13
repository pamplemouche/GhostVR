.class public Lcom/oculus/browser/acra/ErrorReporter$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/acra/ErrorReporter;

.field public final synthetic val$extensions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/acra/ErrorReporter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter$1;->this$0:Lcom/oculus/browser/acra/ErrorReporter;

    iput-object p2, p0, Lcom/oculus/browser/acra/ErrorReporter$1;->val$extensions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter$1;->val$extensions:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
