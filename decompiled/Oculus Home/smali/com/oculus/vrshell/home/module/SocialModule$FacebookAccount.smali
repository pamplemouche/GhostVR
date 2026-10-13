.class Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
.super Ljava/lang/Object;
.source "SocialModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/module/SocialModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FacebookAccount"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profilePicture:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "profilePicture"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;->uid:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;->name:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;->accessToken:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;->profilePicture:Ljava/lang/String;

    .line 90
    return-void
.end method
