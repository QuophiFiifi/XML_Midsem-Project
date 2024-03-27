<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>BlogSite</title>
            </head>
            <body>
                <h1>XML Midsem Project Work</h1>
                
                <h2>Users and Posts:</h2>
                <xsl:apply-templates select="/microbloggingSite/users/user"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="user">
        <div>
             <h2><xsl:value-of select="name"/></h2>
            <p><strong>Username:</strong> <xsl:value-of select="username"/></p>
            <p><strong>Id:</strong> <xsl:value-of select="id"/></p>
            <p><strong>Email:</strong> <xsl:value-of select="email"/></p>
            <p><strong>Gender:</strong> <xsl:value-of select="gender"/></p>
            <h3>Posts</h3>
                <ul>
                    <xsl:apply-templates select="posts/post"/>
                </ul>

        </div> 
    </xsl:template>

    <xsl:template match="post">
        <li>
            <p><strong>Post ID:</strong> <xsl:value-of select="postId"/></p>
            <p><strong>Content:</strong> <xsl:value-of select="content"/></p>
            <p><strong>Likes:</strong> <xsl:value-of select="likes"/></p>
            <h4>Comments</h4>
                <ul>
                     <xsl:apply-templates select="comments/comment"/>
                </ul>
        </li>
    </xsl:template>

    <xsl:template match="comment">
        <li>
            <p><strong>Comment ID:</strong> <xsl:value-of select="commentId"/></p>
            <p><strong>Content:</strong> <xsl:value-of select="content"/></p>

        </li>
    </xsl:template>
</xsl:stylesheet>
 