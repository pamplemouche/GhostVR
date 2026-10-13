.class Lcom/oculus/platform/OVRServiceManager$SharedPrefsFBNSKeys;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVRServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPrefsFBNSKeys"
.end annotation


# static fields
.field public static final CONNECTION_KEY:Ljava/lang/String; = "connection_key"

.field public static final CONNECTION_SECRET:Ljava/lang/String; = "connection_secret"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;


# direct methods
.method private constructor <init>(Lcom/oculus/platform/OVRServiceManager;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$SharedPrefsFBNSKeys;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
