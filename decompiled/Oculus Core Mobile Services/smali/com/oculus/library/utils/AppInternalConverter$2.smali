.class Lcom/oculus/library/utils/AppInternalConverter$2;
.super Ljava/lang/Object;
.source "AppInternalConverter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/utils/AppInternalConverter;->findEntitlementStatus(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/utils/AppInternalConverter;


# direct methods
.method constructor <init>(Lcom/oculus/library/utils/AppInternalConverter;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/oculus/library/utils/AppInternalConverter$2;->this$0:Lcom/oculus/library/utils/AppInternalConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;)I
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 279
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    check-cast p2, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/library/utils/AppInternalConverter$2;->compare(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;)I

    move-result v0

    return v0
.end method
