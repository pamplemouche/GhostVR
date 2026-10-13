.class Lcom/facebook/acra/util/UnsafeConnectionProvider$1;
.super Ljava/lang/Object;
.source "UnsafeConnectionProvider.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/util/UnsafeConnectionProvider;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/util/UnsafeConnectionProvider;


# direct methods
.method constructor <init>(Lcom/facebook/acra/util/UnsafeConnectionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/util/UnsafeConnectionProvider;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/acra/util/UnsafeConnectionProvider$1;->this$0:Lcom/facebook/acra/util/UnsafeConnectionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
