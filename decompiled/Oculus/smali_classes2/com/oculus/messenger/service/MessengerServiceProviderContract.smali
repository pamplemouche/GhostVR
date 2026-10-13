.class public final Lcom/oculus/messenger/service/MessengerServiceProviderContract;
.super Ljava/lang/Object;
.source "MessengerServiceProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/messenger/service/MessengerServiceProviderContract$Status;
    }
.end annotation


# static fields
.field private static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "content://com.oculus.messenger.service.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/messenger/service/MessengerServiceProviderContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/oculus/messenger/service/MessengerServiceProviderContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method
