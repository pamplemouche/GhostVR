.class Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager$1;
.super Ljava/lang/Object;
.source "MobileConfigJavaManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;->findPathToLatestFlatbuffer()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;


# direct methods
.method constructor <init>(Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager$1;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigJavaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 173
    const-string v0, ".mctable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
