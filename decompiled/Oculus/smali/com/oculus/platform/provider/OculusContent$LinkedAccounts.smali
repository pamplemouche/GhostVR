.class public Lcom/oculus/platform/provider/OculusContent$LinkedAccounts;
.super Ljava/lang/Object;
.source "OculusContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/provider/OculusContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedAccounts"
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SERVICE_PROVIDER:Ljava/lang/String; = "service_provider"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "content://com.oculus.horizon.linkedaccounts/accounts"

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/provider/OculusContent$LinkedAccounts;->CONTENT_URI:Landroid/net/Uri;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
