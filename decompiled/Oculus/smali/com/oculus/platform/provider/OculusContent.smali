.class public Lcom/oculus/platform/provider/OculusContent;
.super Ljava/lang/Object;
.source "OculusContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/provider/OculusContent$LinkedAccounts;,
        Lcom/oculus/platform/provider/OculusContent$Profile;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.oculus.horizon"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://com.oculus.horizon"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/provider/OculusContent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
